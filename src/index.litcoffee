# node-http-status

**Reference:**  
http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html  
http://www.w3.org/Protocols/rfc2616/rfc2616-sec6.html#sec6.1.1

    module.exports =

## Informational 1xx

Request received, continuing process.

100 - The server has received the request headers and the client should proceed to send the request body.

    100: 'Continue'
    '100_NAME': 'CONTINUE'
    '100_MESSAGE': 'The server has received the request headers and the client should proceed to send the request body.'
    CONTINUE: 100

101 - The requester has asked the server to switch protocols and the server has agreed to do so.

    101: 'Switching Protocols'
    '101_NAME': 'SWITCHING_PROTOCOLS'
    '101_MESSAGE': 'The requester has asked the server to switch protocols and the server has agreed to do so.'
    SWITCHING_PROTOCOLS: 101

## Successful 2xx

The action was successfully received, understood, and accepted.

200 - Standard response for successful HTTP requests.

    200: 'OK'
    '200_NAME': 'OK'
    '200_MESSAGE': 'Standard response for successful HTTP requests.'
    OK: 200

201 - The request has been fulfilled, resulting in the creation of a new resource.

    201: 'Created'
    '201_NAME': 'CREATED'
    '201_MESSAGE': 'The request has been fulfilled, resulting in the creation of a new resource.'
    CREATED: 201

202 - The request has been accepted for processing, but the processing has not been completed.

    202: 'Accepted'
    '202_NAME': 'ACCEPTED'
    '202_MESSAGE': 'The request has been accepted for processing, but the processing has not been completed.'
    ACCEPTED: 202

203 (since HTTP/1.1) - The server is a transforming proxy (e.g. a Web accelerator) that received a 200 OK from its origin, but is returning a modified version of the origin's response.

    203: 'Non-Authoritative Information'
    '203_NAME': 'NON_AUTHORITATIVE_INFORMATION'
    '203_MESSAGE': 'The server is a transforming proxy (e.g. a Web accelerator) that received a 200 OK from its origin, but is returning a modified version of the origin\'s response.'
    NON_AUTHORITATIVE_INFORMATION: 203

204 - The server successfully processed the request and is not returning any content.

    204: 'No Content'
    '204_NAME': 'NO_CONTENT'
    '204_MESSAGE': 'The server successfully processed the request and is not returning any content.'
    NO_CONTENT: 204

205 - The server successfully processed the request, but is not returning any content. Unlike a 204 response, this response requires that the requester reset the document view.

    205: 'Reset Content'
    '205_NAME': 'RESET_CONTENT'
    '205_MESSAGE': 'The server successfully processed the request, but is not returning any content. Unlike a 204 response, this response requires that the requester reset the document view.'
    RESET_CONTENT: 205

206 (RFC 7233) - The server is delivering only part of the resource (byte serving) due to a range header sent by the client.

    206: 'Partial Content'
    '206_NAME': 'PARTIAL_CONTENT'
    '206_MESSAGE': 'The server is delivering only part of the resource (byte serving) due to a range header sent by the client.'
    PARTIAL_CONTENT: 206

207 (WebDAV; RFC 4918) - The message body that follows is by default an XML message and can contain a number of separate response codes, depending on how many sub-requests were made.

    207: 'Multi Status'
    '207_NAME': 'MULTI_STATUS'
    '207_MESSAGE': 'The message body that follows is by default an XML message and can contain a number of separate response codes, depending on how many sub-requests were made.'
    MULTI_STATUS: 207

208 (WebDAV; RFC 5842) - The members of a DAV binding have already been enumerated in a preceding part of the (multistatus) response, and are not being included again.

    208: 'Already Reported'
    '208_NAME': 'ALREADY_REPORTED'
    '208_MESSAGE': 'The members of a DAV binding have already been enumerated in a preceding part of the (multistatus) response, and are not being included again.'
    ALREADY_REPORTED: 208

204 (RFC 3229) - The server has fulfilled a request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance.

    226: 'IM Used'
    '226_NAME': 'IM_USED'
    '226_MESSAGE': 'The server has fulfilled a request for the resource, and the response is a representation of the result of one or more instance-manipulations applied to the current instance.'
    IM_USED: 226

## Redirection 3xx

Further action must be taken in order to complete the request.

300 - Indicates multiple options for the resource from which the client may choose.

    300: 'Multiple Choices'
    '300_NAME': 'MULTIPLE_CHOICES'
    '300_MESSAGE': 'Indicates multiple options for the resource from which the client may choose.'
    MULTIPLE_CHOICES: 300

301 - This and all future requests should be directed to the given URI.

    301: 'Moved Permanently'
    '301_NAME': 'MOVED_PERMANENTLY'
    '301_MESSAGE': 'This and all future requests should be directed to the given URI.'
    MOVED_PERMANENTLY: 301

302 - This is an example of industry practice contradicting the standard. The HTTP/1.0 specification (RFC 1945) required the client to perform a temporary redirect (the original describing phrase was "Moved Temporarily"),[22] but popular browsers implemented 302 with the functionality of a 303 See Other. Therefore, HTTP/1.1 added status codes 303 and 307 to distinguish between the two behaviours.

    302: 'Found'
    '302_NAME': 'FOUND'
    '302_MESSAGE': 'This is an example of industry practice contradicting the standard. The HTTP/1.0 specification (RFC 1945) required the client to perform a temporary redirect (the original describing phrase was "Moved Temporarily"),[22] but popular browsers implemented 302 with the functionality of a 303 See Other. Therefore, HTTP/1.1 added status codes 303 and 307 to distinguish between the two behaviours.'
    FOUND: 302

303 (since HTTP/1.1) - The response to the request can be found under another URI using the GET method.

    303: 'See Other'
    '303_NAME': 'SEE_OTHER'
    '303_MESSAGE': 'The response to the request can be found under another URI using the GET method.'
    SEE_OTHER: 303

304 (RFC 7232) - Indicates that the resource has not been modified since the version specified by the request headers If-Modified-Since or If-None-Match.

    304: 'Not Modified'
    '304_NAME': 'NOT_MODIFIED'
    '304_MESSAGE': 'Indicates that the resource has not been modified since the version specified by the request headers If-Modified-Since or If-None-Match.'
    NOT_MODIFIED: 304

305 (since HTTP/1.1) - The requested resource is available only through a proxy, the address for which is provided in the response.

    305: 'Use Proxy'
    '304_NAME': 'USE_PROXY'
    '304_MESSAGE': 'The requested resource is available only through a proxy, the address for which is provided in the response.'
    USE_PROXY: 305

306 - No longer used. Originally meant "Subsequent requests should use the specified proxy.

    306: 'Switch Proxy'
    '306_NAME': 'SWITCH_PROXY'
    '306_MESSAGE': 'No longer used. Originally meant "Subsequent requests should use the specified proxy.'
    SWITCH_PROXY: 306

307 (since HTTP/1.1) - In this case, the request should be repeated with another URI; however, future requests should still use the original URI.

    307: 'Temporary Redirect'
    '307_NAME': 'TEMPORARY_REDIRECT'
    '307_MESSAGE': 'In this case, the request should be repeated with another URI; however, future requests should still use the original URI.'
    TEMPORARY_REDIRECT: 307

308 (RFC 7538) - The request and all future requests should be repeated using another URI.

    308: 'Permanent Redirect'
    '308_NAME': 'PERMANENT_REDIRECT'
    '308_MESSAGE': 'The request and all future requests should be repeated using another URI.'
    PERMANENT_REDIRECT: 308

## Client Error 4xx

The request contains bad syntax or cannot be fulfilled.

400 - The server cannot or will not process the request due to an apparent client error.

    400: 'Bad Request'
    '400_NAME': 'BAD_REQUEST'
    '400_MESSAGE': 'The server cannot or will not process the request due to an apparent client error.'
    BAD_REQUEST: 400

401 (RFC 7235) - Similar to 403 Forbidden, but specifically for use when authentication is required and has failed or has not yet been provided.

    401: 'Unauthorized'
    '401_NAME': 'UNAUTHORIZED'
    '401_MESSAGE': 'Similar to 403 Forbidden, but specifically for use when authentication is required and has failed or has not yet been provided.'
    UNAUTHORIZED: 401

402 - Reserved for future use. The original intention was that this code might be used as part of some form of digital cash or micropayment scheme, as proposed for example by GNU Taler[36], but that has not yet happened, and this code is not usually used.

    402: 'Payment Required'
    '402_NAME': 'PAYMENT_REQUIRED'
    '402_MESSAGE': 'Reserved for future use. The original intention was that this code might be used as part of some form of digital cash or micropayment scheme, as proposed for example by GNU Taler[36], but that has not yet happened, and this code is not usually used.'
    PAYMENT_REQUIRED: 402

403 - The request was valid, but the server is refusing action.

    403: 'Forbidden'
    '403_NAME': 'FORBIDDEN'
    '403_MESSAGE': 'The request was valid, but the server is refusing action.'
    FORBIDDEN: 403

404 - The requested resource could not be found but may be available in the future. Subsequent requests by the client are permissible.

    404: 'Not Found'
    '404_NAME': 'NOT_FOUND'
    '404_MESSAGE': 'The requested resource could not be found but may be available in the future. Subsequent requests by the client are permissible.'
    NOT_FOUND: 404

405 - A request method is not supported for the requested resource.

    405: 'Method Not Allowed'
    '405_NAME': 'METHOD_NOT_ALLOWED'
    '405_MESSAGE': 'A request method is not supported for the requested resource.'
    METHOD_NOT_ALLOWED: 405

406 - The requested resource is capable of generating only content not acceptable according to the Accept headers sent in the request.

    406: 'Not Acceptable'
    '406_NAME': 'NOT_ACCEPTABLE'
    '406_MESSAGE': 'The requested resource is capable of generating only content not acceptable according to the Accept headers sent in the request.'
    NOT_ACCEPTABLE: 406

407 (RFC 7235) - The client must first authenticate itself with the proxy.

    407: 'Proxy Authentication Required'
    '407_NAME': 'PROXY_AUTHENTICATION_REQUIRED'
    '407_MESSAGE': 'The client must first authenticate itself with the proxy.'
    PROXY_AUTHENTICATION_REQUIRED: 407

408 - The server timed out waiting for the request.

    408: 'Request Time-out'
    '408_NAME': 'REQUEST_TIMEOUT'
    '408_MESSAGE': 'The server timed out waiting for the request.'
    REQUEST_TIMEOUT: 408

409 - Indicates that the request could not be processed because of conflict in the request, such as an edit conflict between multiple simultaneous updates.

    409: 'Conflict'
    '409_NAME': 'CONFLICT'
    '409_MESSAGE': 'Indicates that the request could not be processed because of conflict in the request, such as an edit conflict between multiple simultaneous updates.'
    CONFLICT: 409

410 - Indicates that the resource requested is no longer available and will not be available again.

    410: 'Gone'
    '410_NAME': 'GONE'
    '410_MESSAGE': 'Indicates that the resource requested is no longer available and will not be available again.'
    GONE: 410

411 - The request did not specify the length of its content, which is required by the requested resource.

    411: 'Length Required'
    '411_NAME': 'LENGTH_REQUIRED'
    '411_MESSAGE': 'The request did not specify the length of its content, which is required by the requested resource.'
    LENGTH_REQUIRED: 411

412 (RFC 7232) - The server does not meet one of the preconditions that the requester put on the request.

    412: 'Precondition Failed'
    '412_NAME': 'PRECONDITION_FAILED'
    '412_MESSAGE': 'The server does not meet one of the preconditions that the requester put on the request.'
    PRECONDITION_FAILED: 412

413 (RFC 7231) - The request is larger than the server is willing or able to process. Previously called "Request Entity Too Large".

    413: 'Request Entity Too Large'
    '413_NAME': 'REQUEST_ENTITY_TOO_LARGE'
    '413_MESSAGE': 'The request is larger than the server is willing or able to process. Previously called "Request Entity Too Large".'
    REQUEST_ENTITY_TOO_LARGE: 413

414 (RFC 7231) - The URI provided was too long for the server to process.

    414: 'Request-URI Too Large'
    '414_NAME': 'REQUEST_URI_TOO_LONG'
    '414_MESSAGE': 'The URI provided was too long for the server to process.'
    REQUEST_URI_TOO_LONG: 414

415 - The request entity has a media type which the server or resource does not support.

    415: 'Unsupported Media Type'
    '415_NAME': 'UNSUPPORTED_MEDIA_TYPE'
    '415_MESSAGE': 'The request entity has a media type which the server or resource does not support.'
    UNSUPPORTED_MEDIA_TYPE: 415

416 (RFC 7233) - The client has asked for a portion of the file (byte serving), but the server cannot supply that portion.

    416: 'Requested Range not Satisfiable'
    '416_NAME': 'REQUESTED_RANGE_NOT_SATISFIABLE'
    '416_MESSAGE': 'The client has asked for a portion of the file (byte serving), but the server cannot supply that portion.'
    REQUESTED_RANGE_NOT_SATISFIABLE: 416

417 - The server cannot meet the requirements of the Expect request-header field.

    417: 'Expectation Failed'
    '417_NAME': 'EXPECTATION_FAILED'
    '417_MESSAGE': 'The server cannot meet the requirements of the Expect request-header field.'
    EXPECTATION_FAILED: 417

418 (RFC 2324, RFC 7168) - Any attempt to brew coffee with a teapot should result in the error code "418 I'm a teapot". The resulting entity body MAY be short and stout. This code was defined in 1998 as one of the traditional IETF April Fools' jokes, in RFC 2324, Hyper Text Coffee Pot Control Protocol, and is not expected to be implemented by actual HTTP servers. The RFC specifies this code should be returned by teapots requested to brew coffee.[50] This HTTP status is used as an Easter egg in some websites, including Google.com.

    418: 'I\'m a teapot'
    '418_NAME': 'IM_A_TEAPOT'
    '418_MESSAGE': 'Any attempt to brew coffee with a teapot should result in the error code "418 I\'m a teapot". The resulting entity body MAY be short and stout.'
    IM_A_TEAPOT: 418

421 (RFC 7540) - The request was directed at a server that is not able to produce a response.

    421: 'Misdirected Request'
    '421_NAME': 'MISDIRECTED_REQUEST'
    '421_MESSAGE': 'The request was directed at a server that is not able to produce a response.'
    MISDIRECTED_REQUEST: 421

422 (WebDAV; RFC 4918) - The request was well-formed but was unable to be followed due to semantic errors.

    422: 'Unprocessable Entity'
    '422_NAME': 'UNPROCESSABLE_ENTITY'
    '422_MESSAGE': 'The request was well-formed but was unable to be followed due to semantic errors.'
    UNPROCESSABLE_ENTITY: 422

423 (WebDAV; RFC 4918) - The resource that is being accessed is locked.

    423: 'Locked'
    '423_NAME': 'LOCKED'
    '423_MESSAGE': 'The resource that is being accessed is locked.'
    LOCKED: 423

424 (WebDAV; RFC 4918) - The request failed because it depended on another request and that request failed.

    424: 'Failed Dependency'
    '424_NAME': 'FAILED_DEPENDENCY'
    '424_MESSAGE': 'The request failed because it depended on another request and that request failed.'
    FAILED_DEPENDENCY: 424

426 - The client should switch to a different protocol such as TLS/1.0, given in the Upgrade header field.

    426: 'Upgrade Required'
    '426_NAME': 'UPGRADE_REQUIRED'
    '426_MESSAGE': 'The client should switch to a different protocol such as TLS/1.0, given in the Upgrade header field.'
    UPGRADE_REQUIRED: 426

428 (RFC 6585) - The origin server requires the request to be conditional.

    428: 'Precondition Required' # RFC 6585
    '428_NAME': 'PRECONDITION_REQUIRED'
    '428_MESSAGE': 'The origin server requires the request to be conditional.'
    PRECONDITION_REQUIRED: 428

429 (RFC 6585) - The user has sent too many requests in a given amount of time.

    429: 'Too Many Requests'
    '429_NAME': 'TOO_MANY_REQUESTS'
    '429_MESSAGE': 'The user has sent too many requests in a given amount of time.'
    TOO_MANY_REQUESTS: 429

431 (RFC 6585) - The server is unwilling to process the request because either an individual header field, or all the header fields collectively, are too large.

    431: 'Request Header Fields Too Large' # RFC 6585
    '431_NAME': 'REQUEST_HEADER_FIELDS_TOO_LARGE'
    '431_MESSAGE': 'The server is unwilling to process the request because either an individual header field, or all the header fields collectively, are too large.'
    REQUEST_HEADER_FIELDS_TOO_LARGE: 431

451 (RFC 7725) - A server operator has received a legal demand to deny access to a resource or to a set of resources that includes the requested resource.

    451: 'Unavailable For Legal Reasons'
    '451_NAME': 'UNAVAILABLE_FOR_LEGAL_REASONS'
    '451_MESSAGE': 'A server operator has received a legal demand to deny access to a resource or to a set of resources that includes the requested resource.'
    UNAVAILABLE_FOR_LEGAL_REASONS: 451

## Server Error 5xx

The server failed to fulfill an apparently valid request.

500 - A generic error message, given when an unexpected condition was encountered and no more specific message is suitable.

    500: 'Internal Server Error'
    '500_NAME': 'INTERNAL_SERVER_ERROR'
    '500_MESSAGE': 'A generic error message, given when an unexpected condition was encountered and no more specific message is suitable.'
    INTERNAL_SERVER_ERROR: 500

501 - The server either does not recognize the request method, or it lacks the ability to fulfil the request. Usually this implies future availability.

    501: 'Not Implemented'
    '501_NAME': 'NOT_IMPLEMENTED'
    '501_MESSAGE': 'The server either does not recognize the request method, or it lacks the ability to fulfil the request. Usually this implies future availability.'
    NOT_IMPLEMENTED: 501

502 - The server was acting as a gateway or proxy and received an invalid response from the upstream server.

    502: 'Bad Gateway'
    '_NAME': 'BAD_GATEWAY'
    '_MESSAGE': 'The server was acting as a gateway or proxy and received an invalid response from the upstream server.'
    BAD_GATEWAY: 502

503 - The server is currently unavailable (because it is overloaded or down for maintenance). Generally, this is a temporary state.

    503: 'Service Unavailable'
    '503_NAME': 'SERVICE_UNAVAILABLE'
    '503_MESSAGE': 'The server is currently unavailable (because it is overloaded or down for maintenance). Generally, this is a temporary state.'
    SERVICE_UNAVAILABLE: 503

504 - The server was acting as a gateway or proxy and did not receive a timely response from the upstream server.

    504: 'Gateway Time-out'
    '504_NAME': 'GATEWAY_TIMEOUT'
    '504_MESSAGE': 'The server was acting as a gateway or proxy and did not receive a timely response from the upstream server.'
    GATEWAY_TIMEOUT: 504

505 - The server does not support the HTTP protocol version used in the request.

    505: 'HTTP Version not Supported'
    '505_NAME': 'HTTP_VERSION_NOT_SUPPORTED'
    '505_MESSAGE': 'The server does not support the HTTP protocol version used in the request.'
    HTTP_VERSION_NOT_SUPPORTED: 505

506 (RFC 2295) - Transparent content negotiation for the request results in a circular reference.

    506: 'Variant Also Negotiates'
    '506_NAME': 'VARIANT_ALSO_NEGOTIATES'
    '506_MESSAGE': 'Transparent content negotiation for the request results in a circular reference.'
    VARIANT_ALSO_NEGOTIATES: 506

507 (WebDAV; RFC 4918) - The server is unable to store the representation needed to complete the request.

    507: 'Insufficient Storage'
    '507_NAME': 'INSUFFICIENT_STORAGE'
    '507_MESSAGE': 'The server is unable to store the representation needed to complete the request.'
    INSUFFICIENT_STORAGE: 507

508 (WebDAV; RFC 5842) - The server detected an infinite loop while processing the request.

    508: 'Loop Detected'
    '508_NAME': 'LOOP_DETECTED'
    '508_MESSAGE': 'The server detected an infinite loop while processing the request.'
    LOOP_DETECTED: 508

510 (RFC 2774) - Further extensions to the request are required for the server to fulfil it.

    510: 'Not Extended'
    '510_NAME': 'NOT_EXTENDED'
    '510_MESSAGE': 'Further extensions to the request are required for the server to fulfil it.'
    NOT_EXTENDED: 510

511 (RFC 6585) - The client needs to authenticate to gain network access. Intended for use by intercepting proxies used to control access to the network.

    511: 'Network Authentication Required'
    '511_NAME': 'NETWORK_AUTHENTICATION_REQUIRED'
    '511_MESSAGE': 'The client needs to authenticate to gain network access. Intended for use by intercepting proxies used to control access to the network.'
    NETWORK_AUTHENTICATION_REQUIRED: 511
