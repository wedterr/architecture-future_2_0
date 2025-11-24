## 1. Медицинский домен (Patient Care Context)
[Назад к списку](./README.md)
### PatientRegistered  
Источник: Patient Aggregate  
Описание: Пациент зарегистрирован в системе  
Полезная нагрузка:  
```json
{
  "patientId": "uuid",
  "personalInfo": {
    "firstName": "string",
    "lastName": "string",
    "dateOfBirth": "date",
    "gender": "enum"
  },
  "contactInfo": {
    "phone": "string",
    "email": "string",
    "address": "object"
  },
  "registrationDate": "datetime"
}
```

## 2. Финтех домен (Financial Services Context)

### AccountCreated  
Источник: Account Aggregate  
Описание: Банковский счёт создан  
Полезная нагрузка:  
```json
{
  "accountId": "uuid",
  "customerId": "uuid",
  "accountType": "enum",
  "currency": "string",
  "initialBalance": "decimal",
  "createdDate": "datetime",
  "status": "enum"
}
```

### CreditApproved  
Источник: Credit Aggregate  
Описание: Кредит одобрен  
Полезная нагрузка:  
```json
{
  "creditId": "uuid",
  "customerId": "uuid",
  "amount": "decimal",
  "interestRate": "decimal",
  "term": "integer",
  "approvedDate": "datetime",
  "approvedBy": "uuid",
  "conditions": "object"
}
```

## 3. AI-сервисы домен (Intelligent Diagnostics Context)

### DiagnosisCompleted  
Источник: Diagnosis Aggregate  
Описание: AI диагноз завершён  
Полезная нагрузка:  
```json
{
  "diagnosisId": "uuid",
  "patientId": "uuid",
  "modelId": "uuid",
  "condition": "string",
  "confidence": "decimal",
  "evidence": "array",
  "recommendations": "array",
  "completedDate": "datetime"
}
```

## 4. Фармацевтический домен (Pharmaceutical Management Context)

### PrescriptionFilled  
Источник: Prescription Aggregate  
Описание: Рецепт выполнен  
Полезная нагрузка:  
```json
{
  "prescriptionId": "uuid",
  "patientId": "uuid",
  "pharmacyId": "uuid",
  "medications": "array",
  "filledDate": "datetime",
  "pharmacistId": "uuid",
  "totalAmount": "decimal"
}
```

## 5. Оборудование домен (Medical Equipment Context)

### EquipmentRegistered
Источник: Equipment Aggregate
Описание: Оборудование зарегистрировано
Полезная нагрузка:
```json
{
  "equipmentId": "uuid",
  "serialNumber": "string",
  "equipmentType": "enum",
  "manufacturer": "string",
  "model": "string",
  "location": "object",
  "registeredDate": "datetime",
  "status": "enum"
}
```

## 6. Платформа данных (Data Platform Context)

### DataProductCreated  
Источник: DataProduct Aggregate  
Описание: Продукт данных создан  
Полезная нагрузка:  
```json
{
  "dataProductId": "uuid",
  "productName": "string",
  "domain": "enum",
  "owner": "uuid",
  "description": "string",
  "schema": "object",
  "sla": "object",
  "createdDate": "datetime"
}
```

## 7. Портал самообслуживания (Self-Service Analytics Context)

### ReportGenerated  
Источник: Report Aggregate  
Описание: Отчёт сгенерирован  
Полезная нагрузка:  
```json
{
  "reportId": "uuid",
  "reportName": "string",
  "ownerId": "uuid",
  "reportType": "enum",
  "parameters": "object",
  "executionTime": "integer",
  "generatedDate": "datetime",
  "fileSize": "integer"
}
```
[Назад к списку](./README.md)