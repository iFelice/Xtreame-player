.class public LB0/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg4/f;
.implements Lcom/google/android/gms/internal/pal/O4;
.implements LO5/m;


# instance fields
.field public final synthetic G:I

.field public H:I

.field public I:Ljava/lang/Object;

.field public J:Ljava/lang/Object;

.field public K:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, LB0/w0;->G:I

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, LB0/w0;->I:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, LB0/w0;->J:Ljava/lang/Object;

    .line 57
    iput-object v1, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 58
    iput v0, p0, LB0/w0;->H:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, LB0/w0;->G:I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, LB0/w0;-><init>()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, LB0/w0;->K:Ljava/lang/Object;

    iput-object p1, p0, LB0/w0;->J:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, LB0/w0;->H:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB0/w0;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LB0/w0;->G:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    const/4 v0, 0x3

    iput v0, p0, LB0/w0;->G:I

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, LB0/w0;-><init>(ILjava/lang/String;Ljava/lang/String;LB0/w0;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;LB0/w0;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 8
    iput v0, p0, LB0/w0;->G:I

    .line 9
    iput p1, p0, LB0/w0;->H:I

    iput-object p2, p0, LB0/w0;->I:Ljava/lang/Object;

    iput-object p3, p0, LB0/w0;->J:Ljava/lang/Object;

    iput-object p4, p0, LB0/w0;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LW0/d;LH5/b;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 47
    iput v0, p0, LB0/w0;->G:I

    .line 48
    iput-object p1, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 49
    iget p1, p1, LW0/d;->b:I

    .line 50
    iput p1, p0, LB0/w0;->H:I

    .line 51
    iput-object p2, p0, LB0/w0;->K:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x2

    .line 52
    new-array p1, p1, [Lcom/google/android/gms/internal/atv_ads_framework/x0;

    iput-object p1, p0, LB0/w0;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LZ3/i0;Lm0/H;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 15
    iput v0, p0, LB0/w0;->G:I

    const/4 v0, 0x0

    .line 16
    iput v0, p0, LB0/w0;->H:I

    sget-object v0, Lv4/a;->G:Lv4/a;

    iput-object v0, p0, LB0/w0;->K:Ljava/lang/Object;

    iput-object p1, p0, LB0/w0;->I:Ljava/lang/Object;

    iput-object p2, p0, LB0/w0;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/CastDevice;LD3/I;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 18
    iput v0, p0, LB0/w0;->G:I

    .line 19
    iput-object p1, p0, LB0/w0;->I:Ljava/lang/Object;

    iput-object p2, p0, LB0/w0;->J:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, LB0/w0;->H:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ef;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 21
    iput v0, p0, LB0/w0;->G:I

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 23
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 24
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->D()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, LB0/w0;->K:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 25
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 26
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, LB0/w0;->J:Ljava/lang/Object;

    .line 27
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, LB0/w0;->H:I

    iget-object v0, p0, LB0/w0;->J:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 29
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Ef;->G0(Z)V

    return-void

    .line 30
    :cond_0
    new-instance p1, Ln3/h;

    .line 31
    const-string v0, "Could not get the parent of the WebView for an overlay."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    throw p1
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/N;Ljava/lang/String;ILandroid/content/SharedPreferences;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 11
    iput v0, p0, LB0/w0;->G:I

    .line 12
    iput-object p1, p0, LB0/w0;->I:Ljava/lang/Object;

    iput-object p2, p0, LB0/w0;->J:Ljava/lang/Object;

    iput p3, p0, LB0/w0;->H:I

    iput-object p4, p0, LB0/w0;->K:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;II)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, LB0/w0;->G:I

    iput-object p1, p0, LB0/w0;->I:Ljava/lang/Object;

    iput-object p2, p0, LB0/w0;->J:Ljava/lang/Object;

    iput-object p3, p0, LB0/w0;->K:Ljava/lang/Object;

    iput p4, p0, LB0/w0;->H:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 34
    iput v0, p0, LB0/w0;->G:I

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/LG;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/LG;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, LB0/w0;->I:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 36
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/y4;->y(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 37
    iput-object p1, p0, LB0/w0;->J:Ljava/lang/Object;

    iput-object p2, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 38
    invoke-virtual {p2}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object p2

    array-length p2, p2

    const/16 v2, 0x10

    if-lt p2, v2, :cond_6

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v2, 0x3

    const/4 v3, 0x4

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 40
    :sswitch_0
    const-string p2, "HMACSHA512"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_1

    :sswitch_1
    const-string p2, "HMACSHA384"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_1

    :sswitch_2
    const-string p2, "HMACSHA256"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_1

    :sswitch_3
    const-string p2, "HMACSHA224"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_4
    const-string p2, "HMACSHA1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_5

    if-eq p2, v1, :cond_4

    if-eq p2, v0, :cond_3

    if-eq p2, v2, :cond_2

    if-ne p2, v3, :cond_1

    const/16 p1, 0x40

    :goto_2
    iput p1, p0, LB0/w0;->H:I

    goto :goto_3

    .line 41
    :cond_1
    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "unknown Hmac algorithm: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const/16 p1, 0x30

    goto :goto_2

    :cond_3
    const/16 p1, 0x20

    goto :goto_2

    :cond_4
    const/16 p1, 0x1c

    goto :goto_2

    :cond_5
    const/16 p1, 0x14

    .line 42
    iput p1, p0, LB0/w0;->H:I

    :goto_3
    iget-object p1, p0, LB0/w0;->I:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ThreadLocal;

    .line 43
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    return-void

    .line 44
    :cond_6
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "key size too small, need at least 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_7
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x6ca99674 -> :sswitch_4
        0x1762408f -> :sswitch_3
        0x176240ee -> :sswitch_2
        0x1762450a -> :sswitch_1
        0x17624bb1 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 60
    iput v0, p0, LB0/w0;->G:I

    .line 61
    iput-object p1, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 62
    iput p2, p0, LB0/w0;->H:I

    .line 63
    iput-object p3, p0, LB0/w0;->J:Ljava/lang/Object;

    .line 64
    iput-object p4, p0, LB0/w0;->K:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I[B)[B
    .locals 1

    .line 1
    iget v0, p0, LB0/w0;->H:I

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/lang/ThreadLocal;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljavax/crypto/Mac;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p2, Ljava/lang/ThreadLocal;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Ljavax/crypto/Mac;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljavax/crypto/Mac;->doFinal()[B

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    .line 38
    .line 39
    const-string p2, "tag size too big"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/atv_ads_framework/x0;)V
    .locals 13

    .line 1
    if-eqz p1, :cond_e

    .line 2
    .line 3
    check-cast p1, LH5/d;

    .line 4
    .line 5
    iget-object v0, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, LW0/d;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, [LW0/d;

    .line 12
    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    if-ge v4, v2, :cond_1

    .line 17
    .line 18
    aget-object v5, v1, v4

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    invoke-virtual {v5}, LW0/d;->c()V

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p1, v1, v0}, LH5/d;->J([LW0/d;LW0/d;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p1, Lcom/google/android/gms/internal/atv_ads_framework/x0;->H:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, LH5/b;

    .line 34
    .line 35
    iget-boolean v4, p1, LH5/d;->K:Z

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    iget-object v5, v2, LH5/b;->b:Lq5/o;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object v5, v2, LH5/b;->d:Lq5/o;

    .line 43
    .line 44
    :goto_1
    if-eqz v4, :cond_3

    .line 45
    .line 46
    iget-object v2, v2, LH5/b;->c:Lq5/o;

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    iget-object v2, v2, LH5/b;->e:Lq5/o;

    .line 50
    .line 51
    :goto_2
    iget v4, v5, Lq5/o;->b:F

    .line 52
    .line 53
    float-to-int v4, v4

    .line 54
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->p(I)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    iget v2, v2, Lq5/o;->b:F

    .line 59
    .line 60
    float-to-int v2, v2

    .line 61
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->p(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 v2, 0x1

    .line 66
    const/4 v5, -0x1

    .line 67
    const/4 v6, 0x0

    .line 68
    const/4 v7, 0x1

    .line 69
    :goto_3
    if-ge v4, p1, :cond_e

    .line 70
    .line 71
    aget-object v8, v1, v4

    .line 72
    .line 73
    if-eqz v8, :cond_d

    .line 74
    .line 75
    iget v9, v8, LW0/d;->f:I

    .line 76
    .line 77
    sub-int v10, v9, v5

    .line 78
    .line 79
    if-nez v10, :cond_4

    .line 80
    .line 81
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_9

    .line 84
    :cond_4
    if-ne v10, v2, :cond_5

    .line 85
    .line 86
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    iget v5, v8, LW0/d;->f:I

    .line 91
    .line 92
    :goto_4
    const/4 v6, 0x1

    .line 93
    goto :goto_9

    .line 94
    :cond_5
    const/4 v11, 0x0

    .line 95
    if-ltz v10, :cond_c

    .line 96
    .line 97
    iget v12, v0, LW0/d;->f:I

    .line 98
    .line 99
    if-ge v9, v12, :cond_c

    .line 100
    .line 101
    if-le v10, v4, :cond_6

    .line 102
    .line 103
    goto :goto_8

    .line 104
    :cond_6
    const/4 v9, 0x2

    .line 105
    if-le v7, v9, :cond_7

    .line 106
    .line 107
    add-int/lit8 v9, v7, -0x2

    .line 108
    .line 109
    mul-int v10, v10, v9

    .line 110
    .line 111
    :cond_7
    if-lt v10, v4, :cond_8

    .line 112
    .line 113
    const/4 v9, 0x1

    .line 114
    goto :goto_5

    .line 115
    :cond_8
    const/4 v9, 0x0

    .line 116
    :goto_5
    const/4 v12, 0x1

    .line 117
    :goto_6
    if-gt v12, v10, :cond_a

    .line 118
    .line 119
    if-nez v9, :cond_a

    .line 120
    .line 121
    sub-int v9, v4, v12

    .line 122
    .line 123
    aget-object v9, v1, v9

    .line 124
    .line 125
    if-eqz v9, :cond_9

    .line 126
    .line 127
    const/4 v9, 0x1

    .line 128
    goto :goto_7

    .line 129
    :cond_9
    const/4 v9, 0x0

    .line 130
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 131
    .line 132
    goto :goto_6

    .line 133
    :cond_a
    if-eqz v9, :cond_b

    .line 134
    .line 135
    aput-object v11, v1, v4

    .line 136
    .line 137
    goto :goto_9

    .line 138
    :cond_b
    iget v5, v8, LW0/d;->f:I

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_c
    :goto_8
    aput-object v11, v1, v4

    .line 142
    .line 143
    :cond_d
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_e
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, LB0/w0;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lc6/b;

    .line 4
    .line 5
    invoke-interface {v0}, Lc6/b;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v1
.end method

.method public final d(I)Z
    .locals 5

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, LB0/w0;->H:I

    .line 4
    .line 5
    sub-int v0, p1, v0

    .line 6
    .line 7
    iput p1, p0, LB0/w0;->H:I

    .line 8
    .line 9
    iget-object p1, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, La6/k;

    .line 12
    .line 13
    check-cast p1, La6/f;

    .line 14
    .line 15
    invoke-virtual {p1}, La6/f;->j()[LT1/c;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    array-length v1, p1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v1, :cond_0

    .line 23
    .line 24
    aget-object v4, p1, v3

    .line 25
    .line 26
    invoke-virtual {v4, v0}, LT1/c;->b(I)I

    .line 27
    .line 28
    .line 29
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-lez v0, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    :cond_1
    return v2

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v1, "Invalid initial window size: "

    .line 39
    .line 40
    invoke-static {v1, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, LB0/w0;->H:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, LB0/w0;->H:I

    .line 16
    .line 17
    sub-int/2addr v1, v2

    .line 18
    iput v1, p0, LB0/w0;->H:I

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v2, v1

    .line 25
    check-cast v2, Landroid/os/HandlerThread;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    check-cast v1, Landroid/os/HandlerThread;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object v1, p0, LB0/w0;->J:Ljava/lang/Object;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    :goto_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw v1
.end method

.method public final f(LT1/c;I)V
    .locals 0

    .line 1
    iget-object p1, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, LT1/c;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, LT1/c;->b(I)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, LB0/w0;->g()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, La6/k;

    .line 4
    .line 5
    check-cast v0, La6/f;

    .line 6
    .line 7
    invoke-virtual {v0}, La6/f;->j()[LT1/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, LT1/c;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    array-length v0, v0

    .line 26
    const/4 v0, 0x0

    .line 27
    iget-object v1, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, La6/k;

    .line 30
    .line 31
    check-cast v1, La6/f;

    .line 32
    .line 33
    invoke-virtual {v1}, La6/f;->j()[LT1/c;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    array-length v2, v1

    .line 38
    if-gtz v2, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    aget-object v0, v1, v0

    .line 42
    .line 43
    iget v1, v0, LT1/c;->a:I

    .line 44
    .line 45
    invoke-virtual {v0}, LT1/c;->h()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    throw v0
.end method

.method public final h()Ll3/z0;
    .locals 14

    .line 1
    iget-object v0, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LB0/w0;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    move-object v12, v0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object v1, v0, LB0/w0;->J:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v5, v1

    .line 13
    check-cast v5, Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, v0, LB0/w0;->I:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v4, v1

    .line 18
    check-cast v4, Ljava/lang/String;

    .line 19
    .line 20
    iget v3, v0, LB0/w0;->H:I

    .line 21
    .line 22
    new-instance v0, Ll3/z0;

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v2, v0

    .line 27
    invoke-direct/range {v2 .. v7}, Ll3/z0;-><init>(ILjava/lang/String;Ljava/lang/String;Ll3/z0;Landroid/os/IBinder;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget v9, p0, LB0/w0;->H:I

    .line 32
    .line 33
    iget-object v0, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v10, v0

    .line 36
    check-cast v10, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, p0, LB0/w0;->J:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v11, v0

    .line 41
    check-cast v11, Ljava/lang/String;

    .line 42
    .line 43
    new-instance v0, Ll3/z0;

    .line 44
    .line 45
    const/4 v13, 0x0

    .line 46
    move-object v8, v0

    .line 47
    invoke-direct/range {v8 .. v13}, Ll3/z0;-><init>(ILjava/lang/String;Ljava/lang/String;Ll3/z0;Landroid/os/IBinder;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public final i()LF/d;
    .locals 12

    .line 1
    iget-object v0, p0, LB0/w0;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lm0/H;

    .line 4
    .line 5
    iget v1, v0, Lm0/H;->d:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_0
    iget-object v5, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v5, LZ3/i0;

    .line 19
    .line 20
    iget-object v6, v5, LZ3/i0;->c:LZ3/i;

    .line 21
    .line 22
    iget-object v6, v6, LZ3/i;->b:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    const-string v7, "is_pub_misconfigured"

    .line 29
    .line 30
    invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    .line 36
    .line 37
    add-int/lit8 v3, v1, -0x1

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    if-eqz v1, :cond_b

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    const-string v7, "Invalid response from server."

    .line 44
    .line 45
    const/4 v8, 0x2

    .line 46
    packed-switch v3, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    new-instance v0, LZ3/a0;

    .line 50
    .line 51
    invoke-direct {v0, v4, v7}, LZ3/a0;-><init>(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw v0

    .line 55
    :pswitch_0
    new-instance v2, LZ3/a0;

    .line 56
    .line 57
    iget-object v0, v0, Lm0/H;->c:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v3, "Publisher misconfiguration: "

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-direct {v2, v1, v0}, LZ3/a0;-><init>(ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v2

    .line 73
    :pswitch_1
    new-instance v1, LZ3/a0;

    .line 74
    .line 75
    iget-object v0, v0, Lm0/H;->c:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v2, "Invalid response from server: "

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {v1, v4, v0}, LZ3/a0;-><init>(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v1

    .line 91
    :pswitch_2
    iput v4, p0, LB0/w0;->H:I

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :pswitch_3
    iput v8, p0, LB0/w0;->H:I

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :pswitch_4
    iput v1, p0, LB0/w0;->H:I

    .line 98
    .line 99
    :goto_1
    iget v1, v0, Lm0/H;->e:I

    .line 100
    .line 101
    add-int/lit8 v3, v1, -0x1

    .line 102
    .line 103
    if-eqz v1, :cond_a

    .line 104
    .line 105
    if-eq v3, v4, :cond_2

    .line 106
    .line 107
    if-ne v3, v8, :cond_1

    .line 108
    .line 109
    sget-object v1, Lv4/a;->H:Lv4/a;

    .line 110
    .line 111
    iput-object v1, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_1
    new-instance v0, LZ3/a0;

    .line 115
    .line 116
    invoke-direct {v0, v4, v7}, LZ3/a0;-><init>(ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_2
    sget-object v1, Lv4/a;->I:Lv4/a;

    .line 121
    .line 122
    iput-object v1, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 123
    .line 124
    :goto_2
    iget-object v1, v0, Lm0/H;->a:Ljava/lang/String;

    .line 125
    .line 126
    if-nez v1, :cond_3

    .line 127
    .line 128
    move-object v3, v6

    .line 129
    goto :goto_3

    .line 130
    :cond_3
    new-instance v3, LZ3/q;

    .line 131
    .line 132
    iget-object v7, v0, Lm0/H;->b:Ljava/lang/String;

    .line 133
    .line 134
    invoke-direct {v3, v7, v1}, LZ3/q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_3
    new-instance v1, Ljava/util/HashSet;

    .line 138
    .line 139
    iget-object v7, v0, Lm0/H;->f:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v7, Ljava/util/List;

    .line 142
    .line 143
    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 144
    .line 145
    .line 146
    iget-object v7, v5, LZ3/i0;->c:LZ3/i;

    .line 147
    .line 148
    iget-object v7, v7, LZ3/i;->b:Landroid/content/SharedPreferences;

    .line 149
    .line 150
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    const-string v9, "stored_info"

    .line 155
    .line 156
    invoke-interface {v7, v9, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    .line 162
    .line 163
    iget-object v0, v0, Lm0/H;->g:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v0, Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-eqz v1, :cond_9

    .line 176
    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    check-cast v1, LZ3/B;

    .line 182
    .line 183
    iget v7, v1, LZ3/B;->b:I

    .line 184
    .line 185
    add-int/lit8 v9, v7, -0x1

    .line 186
    .line 187
    if-eqz v7, :cond_8

    .line 188
    .line 189
    if-eqz v9, :cond_5

    .line 190
    .line 191
    if-eq v9, v4, :cond_7

    .line 192
    .line 193
    if-eq v9, v8, :cond_6

    .line 194
    .line 195
    :cond_5
    move-object v7, v6

    .line 196
    goto :goto_5

    .line 197
    :cond_6
    const-string v7, "clear"

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_7
    const-string v7, "write"

    .line 201
    .line 202
    :goto_5
    if-eqz v7, :cond_4

    .line 203
    .line 204
    iget-object v1, v1, LZ3/B;->a:Ljava/lang/String;

    .line 205
    .line 206
    iget-object v9, v5, LZ3/i0;->b:LZ3/g;

    .line 207
    .line 208
    new-array v10, v4, [LZ3/J;

    .line 209
    .line 210
    aput-object v9, v10, v2

    .line 211
    .line 212
    iget-object v9, v5, LZ3/i0;->a:LZ3/Z;

    .line 213
    .line 214
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    new-instance v11, LZ3/v;

    .line 218
    .line 219
    invoke-direct {v11, v7, v1, v10, v2}, LZ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 220
    .line 221
    .line 222
    iget-object v1, v9, LZ3/Z;->a:Ljava/util/concurrent/Executor;

    .line 223
    .line 224
    invoke-interface {v1, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_8
    throw v6

    .line 229
    :cond_9
    new-instance v0, LF/d;

    .line 230
    .line 231
    iget v1, p0, LB0/w0;->H:I

    .line 232
    .line 233
    iget-object v2, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v2, Lv4/a;

    .line 236
    .line 237
    invoke-direct {v0, v1, v2, v3}, LF/d;-><init>(ILv4/a;LZ3/q;)V

    .line 238
    .line 239
    .line 240
    return-object v0

    .line 241
    :cond_a
    throw v6

    .line 242
    :cond_b
    throw v6

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Landroid/os/Looper;
    .locals 4

    .line 1
    iget-object v0, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, LB0/w0;->H:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Landroid/os/HandlerThread;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, "Starting the looper thread."

    .line 16
    .line 17
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroid/os/HandlerThread;

    .line 21
    .line 22
    const-string v3, "LooperProvider"

    .line 23
    .line 24
    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 30
    .line 31
    .line 32
    new-instance v1, LE1/W;

    .line 33
    .line 34
    iget-object v3, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Landroid/os/HandlerThread;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v1, v3, v2}, LE1/W;-><init>(Landroid/os/Looper;I)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, LB0/w0;->J:Ljava/lang/Object;

    .line 46
    .line 47
    const-string v1, "Looper thread started."

    .line 48
    .line 49
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const-string v1, "Resuming the looper thread"

    .line 56
    .line 57
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Landroid/os/HandlerThread;

    .line 69
    .line 70
    const-string v3, "Invalid state: handlerThread should already been initialized."

    .line 71
    .line 72
    invoke-static {v1, v3}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    iget v1, p0, LB0/w0;->H:I

    .line 76
    .line 77
    add-int/2addr v1, v2

    .line 78
    iput v1, p0, LB0/w0;->H:I

    .line 79
    .line 80
    iget-object v1, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v1, Landroid/os/HandlerThread;

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    monitor-exit v0

    .line 89
    return-object v1

    .line 90
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw v1
.end method

.method public k()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Code"

    .line 7
    .line 8
    iget v2, p0, LB0/w0;->H:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "Message"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, LB0/w0;->J:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Ljava/lang/String;

    .line 25
    .line 26
    const-string v2, "Domain"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, LB0/w0;

    .line 34
    .line 35
    const-string v2, "Cause"

    .line 36
    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    const-string v1, "null"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, LB0/w0;->k()Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    :goto_0
    return-object v0
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, LB0/w0;->I:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v5, v2

    .line 6
    check-cast v5, Lcom/google/android/gms/internal/cast/N;

    .line 7
    .line 8
    iget-object v2, p0, LB0/w0;->J:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v8, v2

    .line 11
    check-cast v8, Ljava/lang/String;

    .line 12
    .line 13
    iget v2, p0, LB0/w0;->H:I

    .line 14
    .line 15
    iget-object v3, p0, LB0/w0;->K:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v4, v3

    .line 18
    check-cast v4, Landroid/content/SharedPreferences;

    .line 19
    .line 20
    move-object v7, p1

    .line 21
    check-cast v7, Landroid/os/Bundle;

    .line 22
    .line 23
    iget-object p1, v5, Lcom/google/android/gms/internal/cast/N;->a:LD3/g;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const-string v9, "Must be called from the main thread."

    .line 29
    .line 30
    const-string v10, "register callback = %s"

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    const/4 v6, 0x2

    .line 34
    iget-object v11, v5, Lcom/google/android/gms/internal/cast/N;->b:Lcom/google/android/gms/internal/cast/t;

    .line 35
    .line 36
    if-eq v2, v3, :cond_0

    .line 37
    .line 38
    if-ne v2, v6, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    :cond_0
    new-instance v3, Lo/j;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v5, v3, Lo/j;->G:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object v12, v5, Lcom/google/android/gms/internal/cast/N;->c:Lcom/google/android/gms/internal/cast/c;

    .line 49
    .line 50
    iput-object v12, v3, Lo/j;->H:Ljava/lang/Object;

    .line 51
    .line 52
    iput-object v8, v3, Lo/j;->I:Ljava/lang/Object;

    .line 53
    .line 54
    new-instance v12, Lcom/google/android/gms/internal/cast/P1;

    .line 55
    .line 56
    invoke-direct {v12, v3, v1}, Lcom/google/android/gms/internal/cast/P1;-><init>(Lo/j;I)V

    .line 57
    .line 58
    .line 59
    iput-object v12, v3, Lo/j;->K:Ljava/lang/Object;

    .line 60
    .line 61
    new-instance v12, Lcom/google/android/gms/internal/cast/P1;

    .line 62
    .line 63
    invoke-direct {v12, v3}, Lcom/google/android/gms/internal/cast/P1;-><init>(Lo/j;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v12}, LD3/g;->a(LD3/h;)V

    .line 67
    .line 68
    .line 69
    if-eqz v11, :cond_1

    .line 70
    .line 71
    new-instance v12, Lcom/google/android/gms/internal/cast/Y;

    .line 72
    .line 73
    invoke-direct {v12, v3, v0}, Lcom/google/android/gms/internal/cast/Y;-><init>(Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    new-array v3, v0, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object v12, v3, v1

    .line 79
    .line 80
    sget-object v13, Lcom/google/android/gms/internal/cast/t;->i:LH3/b;

    .line 81
    .line 82
    invoke-virtual {v13, v10, v3}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v9}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, v11, Lcom/google/android/gms/internal/cast/t;->b:Ljava/util/Set;

    .line 89
    .line 90
    invoke-interface {v3, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_1
    if-eq v2, v0, :cond_2

    .line 94
    .line 95
    if-ne v2, v6, :cond_3

    .line 96
    .line 97
    :cond_2
    new-instance v2, Lcom/google/android/gms/internal/cast/a0;

    .line 98
    .line 99
    iget-object v6, v5, Lcom/google/android/gms/internal/cast/N;->c:Lcom/google/android/gms/internal/cast/c;

    .line 100
    .line 101
    move-object v3, v2

    .line 102
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/cast/a0;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/gms/internal/cast/N;Lcom/google/android/gms/internal/cast/c;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    new-instance v3, LC2/g;

    .line 106
    .line 107
    const/16 v4, 0x1a

    .line 108
    .line 109
    invoke-direct {v3, v2, v4}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v3}, LD3/g;->a(LD3/h;)V

    .line 113
    .line 114
    .line 115
    if-eqz v11, :cond_3

    .line 116
    .line 117
    new-instance p1, Lcom/google/android/gms/internal/cast/Y;

    .line 118
    .line 119
    invoke-direct {p1, v2, v1}, Lcom/google/android/gms/internal/cast/Y;-><init>(Ljava/lang/Object;I)V

    .line 120
    .line 121
    .line 122
    new-array v0, v0, [Ljava/lang/Object;

    .line 123
    .line 124
    aput-object p1, v0, v1

    .line 125
    .line 126
    sget-object v1, Lcom/google/android/gms/internal/cast/t;->i:LH3/b;

    .line 127
    .line 128
    invoke-virtual {v1, v10, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v9}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, v11, Lcom/google/android/gms/internal/cast/t;->b:Ljava/util/Set;

    .line 135
    .line 136
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget v0, p0, LB0/w0;->G:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    sparse-switch v0, :sswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :sswitch_0
    iget-object v0, p0, LB0/w0;->J:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, [Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    aget-object v3, v0, v2

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    iget v3, p0, LB0/w0;->H:I

    .line 23
    .line 24
    add-int/2addr v3, v4

    .line 25
    aget-object v3, v0, v3

    .line 26
    .line 27
    :cond_0
    new-instance v0, Ljava/util/Formatter;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    :goto_0
    :try_start_0
    iget-object v6, v3, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v6, [LW0/d;

    .line 36
    .line 37
    array-length v6, v6

    .line 38
    if-ge v5, v6, :cond_4

    .line 39
    .line 40
    const-string v6, "CW %3d:"

    .line 41
    .line 42
    new-array v7, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    aput-object v8, v7, v2

    .line 49
    .line 50
    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 51
    .line 52
    .line 53
    const/4 v6, 0x0

    .line 54
    :goto_1
    iget v7, p0, LB0/w0;->H:I

    .line 55
    .line 56
    add-int/2addr v7, v1

    .line 57
    if-ge v6, v7, :cond_3

    .line 58
    .line 59
    iget-object v7, p0, LB0/w0;->J:Ljava/lang/Object;

    .line 60
    .line 61
    move-object v8, v7

    .line 62
    check-cast v8, [Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 63
    .line 64
    aget-object v8, v8, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    const-string v9, "    |   "

    .line 67
    .line 68
    if-nez v8, :cond_1

    .line 69
    .line 70
    :try_start_1
    new-array v7, v2, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual {v0, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    goto :goto_3

    .line 78
    :cond_1
    check-cast v7, [Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 79
    .line 80
    aget-object v7, v7, v6

    .line 81
    .line 82
    iget-object v7, v7, Lcom/google/android/gms/internal/atv_ads_framework/x0;->I:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v7, [LW0/d;

    .line 85
    .line 86
    aget-object v7, v7, v5

    .line 87
    .line 88
    if-nez v7, :cond_2

    .line 89
    .line 90
    new-array v7, v2, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-virtual {v0, v9, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const-string v8, " %3d|%3d"

    .line 97
    .line 98
    new-array v9, v1, [Ljava/lang/Object;

    .line 99
    .line 100
    iget v10, v7, LW0/d;->f:I

    .line 101
    .line 102
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    aput-object v10, v9, v2

    .line 107
    .line 108
    iget v7, v7, LW0/d;->e:I

    .line 109
    .line 110
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    aput-object v7, v9, v4

    .line 115
    .line 116
    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 117
    .line 118
    .line 119
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    const-string v6, "%n"

    .line 123
    .line 124
    new-array v7, v2, [Ljava/lang/Object;

    .line 125
    .line 126
    invoke-virtual {v0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 127
    .line 128
    .line 129
    add-int/lit8 v5, v5, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_4
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 137
    .line 138
    .line 139
    return-object v1

    .line 140
    :goto_3
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    :catchall_1
    move-exception v2

    .line 142
    :try_start_3
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :catchall_2
    move-exception v0

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 148
    .line 149
    .line 150
    :goto_4
    throw v2

    .line 151
    :sswitch_1
    :try_start_4
    invoke-virtual {p0}, LB0/w0;->k()Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 159
    goto :goto_5

    .line 160
    :catch_0
    const-string v0, "Error forming toString output."

    .line 161
    .line 162
    :goto_5
    return-object v0

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method
