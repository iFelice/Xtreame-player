.class final Lcom/google/ads/interactivemedia/v3/internal/zzrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzre;

.field private zzb:I

.field private zzc:I

.field private zzd:I

.field private zze:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzre;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzre;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzre;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrf;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzrf;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzrf;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzb:I

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzc:I

    .line 16
    .line 17
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzre;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrf;

    .line 18
    .line 19
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/zzrf;->zzd:I

    .line 20
    .line 21
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzd:I

    .line 22
    .line 23
    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/zzrf;->zzc:I

    .line 24
    .line 25
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zze:I

    .line 26
    .line 27
    return-void
.end method

.method private final zza()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzre;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzre;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrf;

    .line 4
    .line 5
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzrf;->zzd:I

    .line 6
    .line 7
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzd:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzb:I

    .line 5
    .line 6
    const/4 v1, -0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zze:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzre;

    .line 8
    .line 9
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzb:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzre;->zza(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzb:I

    .line 16
    .line 17
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzc:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzre;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/zzre;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrf;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/zzrf;->zzn(Lcom/google/ads/interactivemedia/v3/internal/zzrf;)[I

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzb:I

    .line 28
    .line 29
    aget v1, v1, v2

    .line 30
    .line 31
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzb:I

    .line 32
    .line 33
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zze:I

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zze:I

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public final remove()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzc:I

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    const-string v2, "no calls to next() since the last call to remove()"

    .line 13
    .line 14
    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzqh;->zzi(ZLjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzc:I

    .line 18
    .line 19
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzre;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/zzre;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrf;

    .line 22
    .line 23
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/zzrf;->zza:[Ljava/lang/Object;

    .line 24
    .line 25
    aget-object v3, v3, v0

    .line 26
    .line 27
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/zzrg;->zzc(Ljava/lang/Object;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzrf;->zzl(II)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzre;

    .line 35
    .line 36
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzb:I

    .line 37
    .line 38
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzre;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzrf;

    .line 39
    .line 40
    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zzrf;->zzc:I

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzc:I

    .line 45
    .line 46
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzb:I

    .line 47
    .line 48
    :cond_1
    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzc:I

    .line 49
    .line 50
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/zzrf;->zzd:I

    .line 51
    .line 52
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzrd;->zzd:I

    .line 53
    .line 54
    return-void
.end method
