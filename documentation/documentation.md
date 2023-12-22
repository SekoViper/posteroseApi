# Posterose News API Documentation (Version 1)

## Introduction

Welcome to the Posterose News API (Version 1). This API allows you to manage news articles, providing functionality for creating, reading, updating, and deleting news entries.

## Base URL

The base URL for all API endpoints is:

`[https://posterose.onrender.com]`

# Endpoints

1. Get All News Articles
   GET /api/v1/news

### Description:

Get a list of all news articles.

#### Response:

Status Code: 200 OK
Response Format:
[
{
"id": 1,
"title": "Sample News",
"content": "This is a sample news article.",
"image": "http://example.com/sample-image.jpg",
"created_at": "2023-01-01T12:00:00Z",
"updated_at": "2023-01-01T12:30:00Z"
},
// Additional news entries...
]

2. Get a Single News Article
   GET /api/v1/news/:id

### Description:

Get a single news article by its ID. If the news article does not exist, a 404 Not Found error will be returned.

#### Request Parameters:

id (integer): Unique identifier for the news article.

#### Response:

Status Code: 200 OK
Response Format:
{
    "id": 1,
    "title": "Sample News",
    "content": "This is a sample news article.",
    "image": "http://example.com/sample-image.jpg",
    "created_at": "2023-01-01T12:00:00Z",
    "updated_at": "2023-01-01T12:30:00Z"
}

3. Create a News Article
   POST /api/v1/news

### Description:

Create a new news article.

#### Request Parameters:

title (string): Title of the news article.
content (string): Content of the news article.
image (string): URL of the news article image.

#### Response:

Status Code: 201 Created
Content-Type: application/json
request body:
{
    {
        "title": "Sample News",
        "content": "This is a sample news article.",
        "image": "http://example.com/sample-image.jpg"
    }
}

Response Format:
{
    "id": 1,
    "title": "Sample News",
    "content": "This is a sample news article.",
    "image": "http://example.com/sample-image.jpg",
    "created_at": "2023-01-01T12:00:00Z",
    "updated_at": "2023-01-01T12:30:00Z"
}

4. Update a News Article
   PUT /api/v1/news/:id

## Description:
Update an existing news article.

#### Request Parameters:
id (integer): Unique identifier for the news article to be updated.
##### Request Format:
Content-Type: application/json
Request Body:
{
    "title": "Updated News",
    "content": "This is a sample news article.",
    "image": "http://example.com/sample-image.jpg"
}

#### Response:
Status Code: 200 OK
Response Format:
{
    "id": 1,
    "title": "Updated News",
    "content": "This is a sample news article.",
    "image": "http://example.com/sample-image.jpg",
    "created_at": "2023-01-01T12:00:00Z",
    "updated_at": "2023-01-01T12:30:00Z"
}

5. Delete a News Article
   DELETE /api/v1/news/:id

### Description:

Delete an existing news article.

#### Request Parameters:

id (integer): Unique identifier for the news article to be deleted.

#### Response:

Status Code: 204 No Content

## Error Codes

The following error codes may be returned by the API:

| Status Code | Description                                                                 |
| ----------- | --------------------------------------------------------------------------- |
| 400         | Bad Request - The request was invalid or cannot be otherwise served.         |
| 401         | Unauthorized - Authentication credentials were missing or incorrect.         |
| 403         | Forbidden - The request is understood, but it has been refused or denied.    |
| 404         | Not Found - The URI requested is invalid or the resource requested does not exist. |
| 405         | Method Not Allowed - The request method is not supported for the requested resource. |
| 500         | Internal Server Error - The server encountered an unexpected condition.      |
| 503         | Service Unavailable - The server is currently unavailable.                   |
