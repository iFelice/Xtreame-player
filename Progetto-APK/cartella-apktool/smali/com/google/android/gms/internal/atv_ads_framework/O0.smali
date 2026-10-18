.class public final Lcom/google/android/gms/internal/atv_ads_framework/O0;
.super Lcom/google/android/gms/internal/atv_ads_framework/U;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/atv_ads_framework/O0;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/atv_ads_framework/U;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzb:Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/atv_ads_framework/U;->j(Ljava/lang/Class;Lcom/google/android/gms/internal/atv_ads_framework/U;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static l()Lcom/google/android/gms/internal/atv_ads_framework/N0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzb:Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/atv_ads_framework/U;->f()Lcom/google/android/gms/internal/atv_ads_framework/T;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/N0;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic m(Lcom/google/android/gms/internal/atv_ads_framework/O0;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zze:I

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzd:I

    .line 5
    .line 6
    or-int/2addr v0, v1

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzd:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic n(Lcom/google/android/gms/internal/atv_ads_framework/O0;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzf:I

    iget p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzd:I

    return-void
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/atv_ads_framework/O0;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzg:I

    iget p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzd:I

    return-void
.end method


# virtual methods
.method public final d(I)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    if-eq p1, v4, :cond_3

    .line 11
    .line 12
    if-eq p1, v3, :cond_2

    .line 13
    .line 14
    if-eq p1, v2, :cond_1

    .line 15
    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzb:Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/atv_ads_framework/N0;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzb:Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/atv_ads_framework/T;-><init>(Lcom/google/android/gms/internal/atv_ads_framework/U;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/atv_ads_framework/U;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    const/4 p1, 0x7

    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v5, "zzd"

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    aput-object v5, p1, v6

    .line 44
    .line 45
    const-string v5, "zze"

    .line 46
    .line 47
    aput-object v5, p1, v0

    .line 48
    .line 49
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/e0;->I:Lcom/google/android/gms/internal/atv_ads_framework/e0;

    .line 50
    .line 51
    aput-object v0, p1, v4

    .line 52
    .line 53
    const-string v0, "zzf"

    .line 54
    .line 55
    aput-object v0, p1, v3

    .line 56
    .line 57
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/e0;->H:Lcom/google/android/gms/internal/atv_ads_framework/e0;

    .line 58
    .line 59
    aput-object v0, p1, v2

    .line 60
    .line 61
    const-string v0, "zzg"

    .line 62
    .line 63
    aput-object v0, p1, v1

    .line 64
    .line 65
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/e0;->J:Lcom/google/android/gms/internal/atv_ads_framework/e0;

    .line 66
    .line 67
    const/4 v1, 0x6

    .line 68
    aput-object v0, p1, v1

    .line 69
    .line 70
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/O0;->zzb:Lcom/google/android/gms/internal/atv_ads_framework/O0;

    .line 71
    .line 72
    new-instance v1, Lcom/google/android/gms/internal/atv_ads_framework/v0;

    .line 73
    .line 74
    const-string v2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u100c\u0002"

    .line 75
    .line 76
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/atv_ads_framework/v0;-><init>(Lcom/google/android/gms/internal/atv_ads_framework/U;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method
