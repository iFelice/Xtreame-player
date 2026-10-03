.class public abstract Lcom/google/android/gms/internal/ads/MD;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/wE;

.field public static final b:Lcom/google/android/gms/internal/ads/uE;

.field public static final c:Lcom/google/android/gms/internal/ads/aE;

.field public static final d:Lcom/google/android/gms/internal/ads/YD;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/NE;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/NG;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/GD;

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/GD;-><init>(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/wE;

    .line 15
    .line 16
    const-class v3, Lcom/google/android/gms/internal/ads/nD;

    .line 17
    .line 18
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/wE;-><init>(Lcom/google/android/gms/internal/ads/xE;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    sput-object v2, Lcom/google/android/gms/internal/ads/MD;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 22
    .line 23
    new-instance v1, Lcom/google/android/gms/internal/ads/GD;

    .line 24
    .line 25
    const/16 v2, 0xb

    .line 26
    .line 27
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/GD;-><init>(I)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Lcom/google/android/gms/internal/ads/uE;

    .line 31
    .line 32
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/uE;-><init>(Lcom/google/android/gms/internal/ads/vE;Lcom/google/android/gms/internal/ads/NG;)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/google/android/gms/internal/ads/MD;->b:Lcom/google/android/gms/internal/ads/uE;

    .line 36
    .line 37
    new-instance v1, Lcom/google/android/gms/internal/ads/GD;

    .line 38
    .line 39
    const/16 v2, 0xc

    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/GD;-><init>(I)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/google/android/gms/internal/ads/aE;

    .line 45
    .line 46
    const-class v3, Lcom/google/android/gms/internal/ads/kD;

    .line 47
    .line 48
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/aE;-><init>(Lcom/google/android/gms/internal/ads/bE;Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    sput-object v2, Lcom/google/android/gms/internal/ads/MD;->c:Lcom/google/android/gms/internal/ads/aE;

    .line 52
    .line 53
    new-instance v1, Lcom/google/android/gms/internal/ads/GD;

    .line 54
    .line 55
    const/16 v2, 0xd

    .line 56
    .line 57
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/GD;-><init>(I)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lcom/google/android/gms/internal/ads/YD;

    .line 61
    .line 62
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/YD;-><init>(Lcom/google/android/gms/internal/ads/ZD;Lcom/google/android/gms/internal/ads/NG;)V

    .line 63
    .line 64
    .line 65
    sput-object v2, Lcom/google/android/gms/internal/ads/MD;->d:Lcom/google/android/gms/internal/ads/YD;

    .line 66
    .line 67
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/mD;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xG;->zza()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const-string v1, "Unable to parse OutputPrefixType: "

    .line 25
    .line 26
    invoke-static {v1, p0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/mD;->d:Lcom/google/android/gms/internal/ads/mD;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/mD;->c:Lcom/google/android/gms/internal/ads/mD;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/ads/mD;->b:Lcom/google/android/gms/internal/ads/mD;

    .line 41
    .line 42
    return-object p0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/mD;)Lcom/google/android/gms/internal/ads/xG;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/mD;->b:Lcom/google/android/gms/internal/ads/mD;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Lcom/google/android/gms/internal/ads/xG;->I:Lcom/google/android/gms/internal/ads/xG;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/mD;->c:Lcom/google/android/gms/internal/ads/mD;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object p0, Lcom/google/android/gms/internal/ads/xG;->L:Lcom/google/android/gms/internal/ads/xG;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/mD;->d:Lcom/google/android/gms/internal/ads/mD;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sget-object p0, Lcom/google/android/gms/internal/ads/xG;->K:Lcom/google/android/gms/internal/ads/xG;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/mD;->a:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "Unable to serialize variant: "

    .line 39
    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method
