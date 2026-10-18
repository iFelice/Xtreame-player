.class public Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PWDCHARS_ARRAY:[C

.field private static final PWDCHARS_STRING:Ljava/lang/String; = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->PWDCHARS_ARRAY:[C

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    mul-int/lit8 v1, v0, 0x3

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    div-int/2addr v1, v2

    .line 10
    new-array v1, v1, [B

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    const/16 v5, 0x8

    .line 15
    .line 16
    const/4 v6, 0x2

    .line 17
    const-wide/16 v7, 0xff

    .line 18
    .line 19
    if-ge v0, v2, :cond_3

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    if-ne v0, v2, :cond_1

    .line 23
    .line 24
    invoke-static {p0, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->from64([BII)J

    .line 25
    .line 26
    .line 27
    move-result-wide v9

    .line 28
    const/4 v2, 0x1

    .line 29
    :goto_1
    if-gez v2, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    add-int v11, v4, v2

    .line 33
    .line 34
    and-long v12, v9, v7

    .line 35
    .line 36
    long-to-int v13, v12

    .line 37
    int-to-byte v12, v13

    .line 38
    aput-byte v12, v1, v11

    .line 39
    .line 40
    shr-long/2addr v9, v5

    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_2
    if-ne v0, v6, :cond_2

    .line 45
    .line 46
    invoke-static {p0, v3, v6}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->from64([BII)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    and-long/2addr v2, v7

    .line 51
    long-to-int p0, v2

    .line 52
    int-to-byte p0, p0

    .line 53
    aput-byte p0, v1, v4

    .line 54
    .line 55
    :cond_2
    return-object v1

    .line 56
    :cond_3
    invoke-static {p0, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->from64([BII)J

    .line 57
    .line 58
    .line 59
    move-result-wide v9

    .line 60
    add-int/lit8 v0, v0, -0x4

    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x4

    .line 63
    .line 64
    :goto_3
    if-gez v6, :cond_4

    .line 65
    .line 66
    add-int/lit8 v4, v4, 0x3

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    add-int v11, v4, v6

    .line 70
    .line 71
    and-long v12, v9, v7

    .line 72
    .line 73
    long-to-int v13, v12

    .line 74
    int-to-byte v12, v13

    .line 75
    aput-byte v12, v1, v11

    .line 76
    .line 77
    shr-long/2addr v9, v5

    .line 78
    add-int/lit8 v6, v6, -0x1

    .line 79
    .line 80
    goto :goto_3
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    .line 3
    .line 4
    add-int/lit8 v2, v0, 0x2

    .line 5
    .line 6
    const/4 v3, 0x3

    .line 7
    div-int/2addr v2, v3

    .line 8
    const/4 v4, 0x4

    .line 9
    mul-int/lit8 v2, v2, 0x4

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v0, v3, :cond_2

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    if-ne v0, v4, :cond_0

    .line 19
    .line 20
    aget-byte v5, p0, v2

    .line 21
    .line 22
    and-int/lit16 v5, v5, 0xff

    .line 23
    .line 24
    shl-int/lit8 v5, v5, 0x8

    .line 25
    .line 26
    add-int/lit8 v6, v2, 0x1

    .line 27
    .line 28
    aget-byte v6, p0, v6

    .line 29
    .line 30
    and-int/lit16 v6, v6, 0xff

    .line 31
    .line 32
    or-int/2addr v5, v6

    .line 33
    int-to-long v5, v5

    .line 34
    invoke-static {v5, v6, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->to64(JI)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    :cond_0
    const/4 v3, 0x1

    .line 42
    if-ne v0, v3, :cond_1

    .line 43
    .line 44
    aget-byte p0, p0, v2

    .line 45
    .line 46
    and-int/lit16 p0, p0, 0xff

    .line 47
    .line 48
    int-to-long v2, p0

    .line 49
    invoke-static {v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->to64(JI)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0

    .line 61
    :cond_2
    aget-byte v5, p0, v2

    .line 62
    .line 63
    and-int/lit16 v5, v5, 0xff

    .line 64
    .line 65
    shl-int/lit8 v5, v5, 0x10

    .line 66
    .line 67
    add-int/lit8 v6, v2, 0x1

    .line 68
    .line 69
    aget-byte v6, p0, v6

    .line 70
    .line 71
    and-int/lit16 v6, v6, 0xff

    .line 72
    .line 73
    shl-int/lit8 v6, v6, 0x8

    .line 74
    .line 75
    or-int/2addr v5, v6

    .line 76
    add-int/lit8 v6, v2, 0x2

    .line 77
    .line 78
    aget-byte v6, p0, v6

    .line 79
    .line 80
    and-int/lit16 v6, v6, 0xff

    .line 81
    .line 82
    or-int/2addr v5, v6

    .line 83
    int-to-long v5, v5

    .line 84
    invoke-static {v5, v6, v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->to64(JI)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x3

    .line 92
    .line 93
    add-int/lit8 v0, v0, -0x3

    .line 94
    .line 95
    goto :goto_0
.end method

.method private static final from64([BII)J
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-wide v3, v0

    .line 5
    :goto_0
    if-gtz p2, :cond_0

    .line 6
    .line 7
    return-wide v3

    .line 8
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 9
    .line 10
    add-int/lit8 v5, p1, 0x1

    .line 11
    .line 12
    aget-byte p1, p0, p1

    .line 13
    .line 14
    const/16 v6, 0x2f

    .line 15
    .line 16
    if-ne p1, v6, :cond_1

    .line 17
    .line 18
    const-wide/16 v6, 0x1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide v6, v0

    .line 22
    :goto_1
    const/16 v8, 0x30

    .line 23
    .line 24
    if-lt p1, v8, :cond_2

    .line 25
    .line 26
    const/16 v8, 0x39

    .line 27
    .line 28
    if-gt p1, v8, :cond_2

    .line 29
    .line 30
    add-int/lit8 v6, p1, -0x2e

    .line 31
    .line 32
    int-to-long v6, v6

    .line 33
    :cond_2
    const/16 v8, 0x41

    .line 34
    .line 35
    if-lt p1, v8, :cond_3

    .line 36
    .line 37
    const/16 v8, 0x5a

    .line 38
    .line 39
    if-gt p1, v8, :cond_3

    .line 40
    .line 41
    add-int/lit8 v6, p1, -0x35

    .line 42
    .line 43
    int-to-long v6, v6

    .line 44
    :cond_3
    const/16 v8, 0x61

    .line 45
    .line 46
    if-lt p1, v8, :cond_4

    .line 47
    .line 48
    const/16 v8, 0x7a

    .line 49
    .line 50
    if-gt p1, v8, :cond_4

    .line 51
    .line 52
    add-int/lit8 p1, p1, -0x3b

    .line 53
    .line 54
    int-to-long v6, p1

    .line 55
    :cond_4
    shl-long/2addr v6, v2

    .line 56
    add-long/2addr v3, v6

    .line 57
    add-int/lit8 v2, v2, 0x6

    .line 58
    .line 59
    move p1, v5

    .line 60
    goto :goto_0
.end method

.method private static final to64(JI)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-gtz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 14
    .line 15
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->PWDCHARS_ARRAY:[C

    .line 16
    .line 17
    const-wide/16 v2, 0x3f

    .line 18
    .line 19
    and-long/2addr v2, p0

    .line 20
    long-to-int v3, v2

    .line 21
    aget-char v1, v1, v3

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x6

    .line 27
    shr-long/2addr p0, v1

    .line 28
    goto :goto_0
.end method
