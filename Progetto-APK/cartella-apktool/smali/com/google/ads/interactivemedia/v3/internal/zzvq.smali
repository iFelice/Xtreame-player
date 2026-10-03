.class final Lcom/google/ads/interactivemedia/v3/internal/zzvq;
.super Lcom/google/ads/interactivemedia/v3/internal/zzzr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/internal/zzzr<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zza:Lcom/google/ads/interactivemedia/v3/internal/zzwj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzzr;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    return-void
.end method

.method private final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzwj;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Adapter for type with cyclic dependency has been used before dependency has been resolved"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method


# virtual methods
.method public final read(Lcom/google/ads/interactivemedia/v3/internal/zzacc;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/zzacc;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvq;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->read(Lcom/google/ads/interactivemedia/v3/internal/zzacc;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final write(Lcom/google/ads/interactivemedia/v3/internal/zzace;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/zzace;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvq;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzwj;->write(Lcom/google/ads/interactivemedia/v3/internal/zzace;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzwj;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvq;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final zzb(Lcom/google/ads/interactivemedia/v3/internal/zzwj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzvq;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzwj;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 9
    .line 10
    const-string v0, "Delegate is already set"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method
