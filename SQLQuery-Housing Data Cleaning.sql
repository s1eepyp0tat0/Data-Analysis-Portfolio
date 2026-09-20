/*SQL数据清洗*/
SELECT *
FROM PortfolioProject..NashvilleHousing

---------------统一日期格式-------------------

SELECT SaleDate,CONVERT(Date,SaleDate)
FROM PortfolioProject..NashvilleHousing

Update NashvilleHousing
SET SaleDate = CONVERT(Date,SaleDate)

ALTER TABLE NashvilleHousing
ADD SaleDateConverted Date;

Update NashvilleHousing
SET SaleDateConverted = CONVERT(Date,SaleDate)

----------------填入房产地址数据-----------------------

SELECT *
FROM PortfolioProject..NashvilleHousing
--WHERE PropertyAddress is NULL
ORDER BY ParcelID


SELECT a.ParcelId,a.PropertyAddress,b.ParcelID,b.PropertyAddress,ISNULL(a.PropertyAddress,b.PropertyAddress)
FROM PortfolioProject..NashvilleHousing a
JOIN PortfolioProject..NashvilleHousing b
	ON a.ParcelId = b.ParcelID 
	AND a.[UniqueID] <> b.[UniqueID]
WHERE a.PropertyAddress is NULL


UPDATE a
SET PropertyAddress = ISNULL(a.PropertyAddress,b.PropertyAddress)
FROM PortfolioProject..NashvilleHousing a
JOIN PortfolioProject..NashvilleHousing b
	ON a.ParcelId = b.ParcelID 
	AND a.[UniqueID] <> b.[UniqueID]
WHERE a.PropertyAddress is NULL

----------------分隔地址成单独列（Address、City、State）---------------------
SELECT PropertyAddress
FROM PortfolioProject..NashvilleHousing

SELECT
SUBSTRING(PropertyAddress,1,CHARINDEX(',',PropertyAddress) -1 ) as Address
,SUBSTRING(PropertyAddress,CHARINDEX(',',PropertyAddress) +1 ,LEN(PropertyAddress)) as Address
FROM PortfolioProject..NashvilleHousing

ALTER TABLE NashvilleHousing
ADD PropertySplitAddress Nvarchar(255);
Update NashvilleHousing
SET PropertySplitAddress = SUBSTRING(PropertyAddress,1,CHARINDEX(',',PropertyAddress) -1 )

ALTER TABLE NashvilleHousing
ADD PropertySplitCity Nvarchar(255);
Update NashvilleHousing
SET PropertySplitCity = SUBSTRING(PropertyAddress,CHARINDEX(',',PropertyAddress) +1 ,LEN(PropertyAddress))

SELECT *
FROM PortfolioProject..NashvilleHousing

----------------- 分割业主地址--------------------------

SELECT OwnerAddress
FROM PortfolioProject..NashvilleHousing

SELECT PARSENAME(REPLACE(OwnerAddress,',','.'),3)
,PARSENAME(REPLACE(OwnerAddress,',','.'),2)
,PARSENAME(REPLACE(OwnerAddress,',','.'),1)
FROM PortfolioProject..NashvilleHousing

ALTER TABLE NashvilleHousing
ADD OwnerSplitAddress Nvarchar(255);

ALTER TABLE NashvilleHousing
ADD OwnerSplitCity Nvarchar(255);

ALTER TABLE NashvilleHousing
ADD OwnerSplitState Nvarchar(255);

Update NashvilleHousing
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress,',','.'),3)

Update NashvilleHousing
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress,',','.'),2)

Update NashvilleHousing
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress,',','.'),1)

SELECT *
FROM PortfolioProject..NashvilleHousing

---------将是否空置出售栏（SoldAsVacant）中的Y/N替换为Yes/No---------
SELECT Distinct(SoldAsVacant),Count(SoldAsVacant)
FROM PortfolioProject..NashvilleHousing
GROUP By SoldAsVacant
ORDER BY 2

SELECT SoldAsVacant,
CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
	 WHEN SoldAsVacant = 'N' THEN 'No'
	 ELSE SoldAsVacant
	 END
FROM PortfolioProject..NashvilleHousing

UPDATE NashvilleHousing
SET SoldAsVacant= 
		CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
		WHEN SoldAsVacant = 'N' THEN 'No'
		ELSE SoldAsVacant
		END


---------------------去重----------------------
WITH RowNumCTE AS(
SELECT *,ROW_NUMBER() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
				 UniqueID
	) row_num
FROM PortfolioProject..NashvilleHousing
--ORDER BY ParcelID
)
SELECT *
FROM RowNumCTE
WHERE row_num > 1
Order by PropertyAddress 

WITH RowNumCTE AS(
SELECT *,ROW_NUMBER() OVER (
	PARTITION BY ParcelID,
				 PropertyAddress,
				 SalePrice,
				 SaleDate,
				 LegalReference
				 ORDER BY
				 UniqueID
	) row_num
FROM PortfolioProject..NashvilleHousing
--ORDER BY ParcelID
)
DELETE 
FROM RowNumCTE
WHERE row_num > 1

/*
-----------删除未使用栏-------------
SELECT *
FROM PortfolioProject..NashvilleHousing

ALTER TABLE PortfolioProject..NashvilleHousing
DROP COLUMN XXX
*/
