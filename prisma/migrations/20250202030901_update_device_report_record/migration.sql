/*
  Warnings:

  - You are about to drop the column `barcode` on the `Device` table. All the data in the column will be lost.
  - You are about to drop the column `expireDate` on the `Device` table. All the data in the column will be lost.
  - You are about to drop the column `serial` on the `Device` table. All the data in the column will be lost.
  - You are about to drop the column `customerPhone` on the `RepairRecord` table. All the data in the column will be lost.
  - You are about to drop the column `deviceBarcode` on the `RepairRecord` table. All the data in the column will be lost.
  - You are about to drop the column `deviceSerial` on the `RepairRecord` table. All the data in the column will be lost.
  - You are about to drop the column `expireDate` on the `RepairRecord` table. All the data in the column will be lost.
  - You are about to drop the column `customerPhone` on the `ReportRecord` table. All the data in the column will be lost.
  - You are about to drop the column `deviceBarcode` on the `ReportRecord` table. All the data in the column will be lost.
  - You are about to drop the column `deviceSerial` on the `ReportRecord` table. All the data in the column will be lost.
  - You are about to drop the column `expireDate` on the `ReportRecord` table. All the data in the column will be lost.
  - Made the column `importDate` on table `Device` required. This step will fail if there are existing NULL values in that column.
  - Made the column `product` on table `Device` required. This step will fail if there are existing NULL values in that column.
  - Made the column `customer` on table `Device` required. This step will fail if there are existing NULL values in that column.
  - Made the column `deviceCustomer` on table `RepairRecord` required. This step will fail if there are existing NULL values in that column.
  - Made the column `deviceProduct` on table `RepairRecord` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Device" DROP COLUMN "barcode",
DROP COLUMN "expireDate",
DROP COLUMN "serial",
ALTER COLUMN "importDate" SET NOT NULL,
ALTER COLUMN "product" SET NOT NULL,
ALTER COLUMN "customer" SET NOT NULL;

-- AlterTable
ALTER TABLE "RepairRecord" DROP COLUMN "customerPhone",
DROP COLUMN "deviceBarcode",
DROP COLUMN "deviceSerial",
DROP COLUMN "expireDate",
ADD COLUMN     "importDate" TIMESTAMP(3),
ALTER COLUMN "deviceCustomer" SET NOT NULL,
ALTER COLUMN "deviceProduct" SET NOT NULL;

-- AlterTable
ALTER TABLE "ReportRecord" DROP COLUMN "customerPhone",
DROP COLUMN "deviceBarcode",
DROP COLUMN "deviceSerial",
DROP COLUMN "expireDate",
ADD COLUMN     "importDate" TIMESTAMP(3);
