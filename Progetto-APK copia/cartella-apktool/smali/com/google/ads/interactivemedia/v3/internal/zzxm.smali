.class final Lcom/google/ads/interactivemedia/v3/internal/zzxm;
.super Lcom/google/ads/interactivemedia/v3/internal/zzwj;
.source "SourceFile"


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Z

.field final synthetic zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvr;

.field final synthetic zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaca;

.field final synthetic zze:Lcom/google/ads/interactivemedia/v3/internal/zzxn;

.field private volatile zzf:Lcom/google/ads/interactivemedia/v3/internal/zzwj;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzxn;ZZLcom/google/ads/interactivemedia/v3/internal/zzvr;Lcom/google/ads/interactivemedia/v3/internal/zzaca;)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zza:Z

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zzb:Z

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvr;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzxn;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;-><init>()V

    return-void
.end method

.method private final zza()Lcom/google/ads/interactivemedia/v3/internal/zzwj;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zzc:Lcom/google/ads/interactivemedia/v3/internal/zzvr;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzxn;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzaca;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/zzvr;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzwk;Lcom/google/ads/interactivemedia/v3/internal/zzaca;)Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public final read(Lcom/google/ads/interactivemedia/v3/internal/zzacc;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zza:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacc;->zzo()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->read(Lcom/google/ads/interactivemedia/v3/internal/zzacc;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final write(Lcom/google/ads/interactivemedia/v3/internal/zzace;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zzb:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zzg()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzxm;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->write(Lcom/google/ads/interactivemedia/v3/internal/zzace;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
