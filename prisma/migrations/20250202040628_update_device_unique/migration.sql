/*
  Warnings:

  - A unique constraint covering the columns `[name]` on the table `Device` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[deviceName]` on the table `RepairRecord` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Device_name_key" ON "Device"("name");

-- CreateIndex
CREATE UNIQUE INDEX "RepairRecord_deviceName_key" ON "RepairRecord"("deviceName");
