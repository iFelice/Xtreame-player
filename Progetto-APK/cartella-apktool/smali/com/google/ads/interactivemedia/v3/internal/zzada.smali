.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzada;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zzd:I = 0x0

.field private static volatile zze:I = 0x64


# instance fields
.field zza:I

.field final zzb:I

.field zzc:Lcom/google/ads/interactivemedia/v3/internal/zzadb;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/zzada;->zze:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzada;->zzb:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzacz;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p1, Lcom/google/ads/interactivemedia/v3/internal/zzada;->zze:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzada;->zzb:I

    return-void
.end method

.method public static zzC(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    neg-int v0, v0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzD(J)J
    .locals 3

    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    const/4 v2, 0x1

    ushr-long/2addr p0, v2

    neg-long v0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzE([BIIZ)Lcom/google/ads/interactivemedia/v3/internal/zzada;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/zzacy;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p0

    .line 6
    move v2, p1

    .line 7
    move v3, p2

    .line 8
    move v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/zzacy;-><init>([BIIZLcom/google/ads/interactivemedia/v3/internal/zzacx;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v6, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzacy;->zzd(I)I
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzaeg; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-object v6

    .line 16
    :catch_0
    move-exception p0

    .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method


# virtual methods
.method public abstract zzA()Z
.end method

.method public abstract zzB()Z
.end method

.method public abstract zza()D
.end method

.method public abstract zzb()F
.end method

.method public abstract zzc()I
.end method

.method public abstract zzd(I)I
.end method

.method public abstract zze()I
.end method

.method public abstract zzf()I
.end method

.method public abstract zzg()I
.end method

.method public abstract zzj()I
.end method

.method public abstract zzk()I
.end method

.method public abstract zzl()I
.end method

.method public abstract zzm()I
.end method

.method public abstract zzn()J
.end method

.method public abstract zzo()J
.end method

.method public abstract zzs()J
.end method

.method public abstract zzt()J
.end method

.method public abstract zzu()J
.end method

.method public abstract zzv()Lcom/google/ads/interactivemedia/v3/internal/zzacw;
.end method

.method public abstract zzw()Ljava/lang/String;
.end method

.method public abstract zzx()Ljava/lang/String;
.end method

.method public abstract zzy(I)V
.end method

.method public abstract zzz(I)V
.end method
