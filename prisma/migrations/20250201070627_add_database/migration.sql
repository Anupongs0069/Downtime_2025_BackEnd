/*
  Warnings:

  - Added the required column `family` to the `Device` table without a default value. This is not possible if the table is not empty.
  - Added the required column `importDate` to the `Device` table without a default value. This is not possible if the table is not empty.
  - Added the required column `product` to the `Device` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deviceCustomer` to the `RepairRecord` table without a default value. This is not possible if the table is not empty.
  - Added the required column `deviceProduct` to the `RepairRecord` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Device" ADD COLUMN     "family" TEXT NOT NULL,
ADD COLUMN     "importDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "product" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "RepairRecord" ADD COLUMN     "deviceCustomer" TEXT NOT NULL,
ADD COLUMN     "deviceProduct" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "ReportRecord" (
    "id" SERIAL NOT NULL,
    "customerName" TEXT NOT NULL,
    "customerPhone" TEXT NOT NULL,
    "deviceName" TEXT NOT NULL,
    "deviceBarcode" TEXT NOT NULL,
    "deviceSerial" TEXT NOT NULL,
    "deviceCustomer" TEXT NOT NULL,
    "deviceProduct" TEXT NOT NULL,
    "problem" TEXT NOT NULL,
    "solving" TEXT NOT NULL,
    "deviceId" INTEGER,
    "userId" INTEGER,
    "engineerId" INTEGER,
    "status" TEXT NOT NULL DEFAULT 'active',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "endJobDate" TIMESTAMP(3),
    "payDate" TIMESTAMP(3),
    "amount" INTEGER,
    "imageBeforeRepair" TEXT,
    "imageAfterRepair" TEXT,
    "expireDate" TIMESTAMP(3),

    CONSTRAINT "ReportRecord_pkey" PRIMARY KEY ("id")
);
