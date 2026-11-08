.class public abstract synthetic Lcom/google/android/gms/internal/ads/uc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(III)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/v;->I0(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    return p0
.end method

.method public static synthetic B(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :pswitch_0
    const-string p0, "MISSING_SGTM_SERVER_URL"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "PINNED_TO_SERVICE_UPLOAD"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "SERVICE_FLAG_OFF"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "CLIENT_FLAG_OFF"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "NOT_ENABLED_IN_MANIFEST"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "MISSING_JOB_SCHEDULER"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "SDK_TOO_OLD"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    const-string p0, "NON_PLAY_MODE"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    const-string p0, "ANDROID_TOO_OLD"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    const-string p0, "MEASUREMENT_SERVICE_NOT_ENABLED"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    const-string p0, "CLIENT_UPLOAD_ELIGIBLE"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    const-string p0, "CLIENT_UPLOAD_ELIGIBILITY_UNKNOWN"

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic C(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :pswitch_0
    const-string p0, "UNRECOGNIZED"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "REMOTE"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "ASYMMETRIC_PUBLIC"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "ASYMMETRIC_PRIVATE"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "SYMMETRIC"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "UNKNOWN_KEYMATERIAL"

    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic D(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    const-string p0, "null"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const-string p0, "VIDEO"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    const-string p0, "NATIVE_DISPLAY"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    const-string p0, "HTML_DISPLAY"

    .line 20
    .line 21
    return-object p0
.end method

.method public static final a(I)I
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/uc;->k(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "Can\'t get the number of an unknown enum value."

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public static final b(I)I
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/uc;->h(I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Can\'t get the number of an unknown enum value."

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public static c(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    packed-switch p0, :pswitch_data_1

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :pswitch_0
    const/16 p0, 0xc

    .line 10
    .line 11
    return p0

    .line 12
    :pswitch_1
    const/16 p0, 0xb

    .line 13
    .line 14
    return p0

    .line 15
    :pswitch_2
    const/16 p0, 0xa

    .line 16
    .line 17
    return p0

    .line 18
    :pswitch_3
    const/16 p0, 0x9

    .line 19
    .line 20
    return p0

    .line 21
    :pswitch_4
    const/16 p0, 0x8

    .line 22
    .line 23
    return p0

    .line 24
    :pswitch_5
    const/4 p0, 0x7

    .line 25
    return p0

    .line 26
    :pswitch_6
    const/4 p0, 0x6

    .line 27
    return p0

    .line 28
    :pswitch_7
    const/4 p0, 0x5

    .line 29
    return p0

    .line 30
    :pswitch_8
    const/4 p0, 0x4

    .line 31
    return p0

    .line 32
    :pswitch_9
    const/4 p0, 0x3

    .line 33
    return p0

    .line 34
    :pswitch_a
    const/4 p0, 0x2

    .line 35
    return p0

    .line 36
    :pswitch_b
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic d(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :pswitch_0
    const-string p0, "rendering-webview-load-html-end"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "rendering-webview-load-html-start"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "rendering-configure-webview-end"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "rendering-configure-webview-start"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "rendering-ad-component-creation-end"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "rendering-webview-creation-end"

    .line 22
    .line 23
    return-object p0

    .line 24
    :pswitch_6
    const-string p0, "rendering-webview-creation-start"

    .line 25
    .line 26
    return-object p0

    .line 27
    :pswitch_7
    const-string p0, "public-api-callback"

    .line 28
    .line 29
    return-object p0

    .line 30
    :pswitch_8
    const-string p0, "rendering-start"

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_9
    const-string p0, "server-response-parse-start"

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_a
    const-string p0, "binder-call-start"

    .line 37
    .line 38
    return-object p0

    .line 39
    :pswitch_b
    const-string p0, "normalize-ad-response-end"

    .line 40
    .line 41
    return-object p0

    .line 42
    :pswitch_c
    const-string p0, "normalize-ad-response-start"

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_d
    const-string p0, "http-response-ready"

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_e
    const-string p0, "get-ad-dictionary-sdkcore-end"

    .line 49
    .line 50
    return-object p0

    .line 51
    :pswitch_f
    const-string p0, "get-ad-dictionary-sdkcore-start"

    .line 52
    .line 53
    return-object p0

    .line 54
    :pswitch_10
    const-string p0, "get-signals-sdkcore-end"

    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_11
    const-string p0, "get-signals-sdkcore-start"

    .line 58
    .line 59
    return-object p0

    .line 60
    :pswitch_12
    const-string p0, "gms-signals-end"

    .line 61
    .line 62
    return-object p0

    .line 63
    :pswitch_13
    const-string p0, "gms-signals-start"

    .line 64
    .line 65
    return-object p0

    .line 66
    :pswitch_14
    const-string p0, "service-connected"

    .line 67
    .line 68
    return-object p0

    .line 69
    :pswitch_15
    const-string p0, "client-signals-end"

    .line 70
    .line 71
    return-object p0

    .line 72
    :pswitch_16
    const-string p0, "client-signals-start"

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_17
    const-string p0, "dynamite-enter"

    .line 76
    .line 77
    return-object p0

    .line 78
    :pswitch_18
    const-string p0, "api-call"

    .line 79
    .line 80
    return-object p0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic e(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const-string p0, "video"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    throw p0

    .line 15
    :cond_1
    const-string p0, "nativeDisplay"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const-string p0, "htmlDisplay"

    .line 19
    .line 20
    return-object p0
.end method

.method public static synthetic f(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    const-string p0, "other"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    throw p0

    .line 15
    :cond_1
    const-string p0, "mobile"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const-string p0, "ctv"

    .line 19
    .line 20
    return-object p0
.end method

.method public static synthetic g(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-ne p0, v0, :cond_0

    .line 12
    .line 13
    const-string p0, "unspecified"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    throw p0

    .line 18
    :cond_1
    const-string p0, "onePixel"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_2
    const-string p0, "definedByJavascript"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const-string p0, "beginToRender"

    .line 25
    .line 26
    return-object p0
.end method

.method public static synthetic h(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :pswitch_0
    const/4 p0, -0x1

    .line 7
    return p0

    .line 8
    :pswitch_1
    const/4 p0, 0x4

    .line 9
    return p0

    .line 10
    :pswitch_2
    const/4 p0, 0x3

    .line 11
    return p0

    .line 12
    :pswitch_3
    const/4 p0, 0x2

    .line 13
    return p0

    .line 14
    :pswitch_4
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :pswitch_5
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic i(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :pswitch_0
    const-string p0, "unknown"

    .line 7
    .line 8
    return-object p0

    .line 9
    :pswitch_1
    const-string p0, "fire_tv"

    .line 10
    .line 11
    return-object p0

    .line 12
    :pswitch_2
    const-string p0, "leanback"

    .line 13
    .line 14
    return-object p0

    .line 15
    :pswitch_3
    const-string p0, "custom"

    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_4
    const-string p0, "launcher_x"

    .line 19
    .line 20
    return-object p0

    .line 21
    :pswitch_5
    const-string p0, "watson"

    .line 22
    .line 23
    return-object p0

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic j(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :pswitch_0
    const/4 p0, -0x1

    .line 7
    return p0

    .line 8
    :pswitch_1
    const/4 p0, 0x4

    .line 9
    return p0

    .line 10
    :pswitch_2
    const/4 p0, 0x3

    .line 11
    return p0

    .line 12
    :pswitch_3
    const/4 p0, 0x2

    .line 13
    return p0

    .line 14
    :pswitch_4
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :pswitch_5
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic k(I)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    throw p0

    .line 7
    :pswitch_0
    return v0

    .line 8
    :pswitch_1
    const/16 p0, 0x8

    .line 9
    .line 10
    return p0

    .line 11
    :pswitch_2
    const/4 p0, 0x7

    .line 12
    return p0

    .line 13
    :pswitch_3
    const/4 p0, 0x6

    .line 14
    return p0

    .line 15
    :pswitch_4
    const/4 p0, 0x5

    .line 16
    return p0

    .line 17
    :pswitch_5
    const/4 p0, 0x4

    .line 18
    return p0

    .line 19
    :pswitch_6
    const/4 p0, 0x3

    .line 20
    return p0

    .line 21
    :pswitch_7
    const/4 p0, 0x2

    .line 22
    return p0

    .line 23
    :pswitch_8
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :pswitch_9
    return v0

    .line 26
    :pswitch_a
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic l(I)I
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    throw p0

    .line 6
    :pswitch_0
    const/16 p0, 0x16

    .line 7
    .line 8
    return p0

    .line 9
    :pswitch_1
    const/16 p0, 0x15

    .line 10
    .line 11
    return p0

    .line 12
    :pswitch_2
    const/16 p0, 0x14

    .line 13
    .line 14
    return p0

    .line 15
    :pswitch_3
    const/16 p0, 0x8

    .line 16
    .line 17
    return p0

    .line 18
    :pswitch_4
    const/4 p0, 0x7

    .line 19
    return p0

    .line 20
    :pswitch_5
    const/4 p0, 0x6

    .line 21
    return p0

    .line 22
    :pswitch_6
    const/4 p0, 0x5

    .line 23
    return p0

    .line 24
    :pswitch_7
    const/4 p0, 0x4

    .line 25
    return p0

    .line 26
    :pswitch_8
    const/4 p0, 0x3

    .line 27
    return p0

    .line 28
    :pswitch_9
    const/4 p0, 0x2

    .line 29
    return p0

    .line 30
    :pswitch_a
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :pswitch_b
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static m(III)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/hH;->M(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    return p0
.end method

.method public static n(IIII)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/atv_ads_framework/L;->Z(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    add-int/2addr p0, p3

    .line 8
    return p0
.end method

.method public static o(Lcom/google/android/gms/internal/ads/MJ;I)Lcom/google/android/gms/internal/ads/MJ;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Ii;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/Ii;-><init>(Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static p(Lcom/google/android/gms/internal/ads/MJ;II)Lcom/google/android/gms/internal/ads/MJ;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Ii;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/Ii;-><init>(Lcom/google/android/gms/internal/ads/MJ;II)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static q(Lcom/google/android/gms/internal/ads/MJ;ILjava/lang/Object;)Lcom/google/android/gms/internal/ads/MJ;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/al;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/al;-><init>(Lcom/google/android/gms/internal/ads/MJ;ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static r(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;I)Lcom/google/android/gms/internal/ads/MJ;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Jd;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/Jd;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static bridge synthetic s(Lcom/google/android/gms/internal/ads/gz;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/gz;->accept(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t(Lcom/google/android/gms/internal/ads/xH;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static synthetic u(Lcom/google/android/gms/internal/measurement/y2;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static synthetic v(Lcom/google/android/gms/internal/pal/I;)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 7
    .line 8
    .line 9
    throw p0
.end method

.method public static w(III)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/atv_ads_framework/L;->Z(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    return p0
.end method

.method public static x(IIII)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/pal/v;->I0(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    add-int/2addr p0, p3

    .line 8
    return p0
.end method

.method public static y(III)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/b2;->w0(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    return p0
.end method

.method public static z(III)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/2addr p0, p1

    .line 6
    add-int/2addr p0, p2

    .line 7
    return p0
.end method
