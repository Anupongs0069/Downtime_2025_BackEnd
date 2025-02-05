-- AlterTable
ALTER TABLE "Device" ALTER COLUMN "family" DROP NOT NULL,
ALTER COLUMN "product" DROP NOT NULL;

-- AlterTable
ALTER TABLE "RepairRecord" ALTER COLUMN "customerPhone" DROP NOT NULL,
ALTER COLUMN "deviceBarcode" DROP NOT NULL,
ALTER COLUMN "deviceSerial" DROP NOT NULL,
ALTER COLUMN "deviceCustomer" DROP NOT NULL,
ALTER COLUMN "deviceProduct" DROP NOT NULL;
