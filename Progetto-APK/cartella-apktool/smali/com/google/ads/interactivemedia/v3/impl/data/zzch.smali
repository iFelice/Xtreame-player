.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/zzch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzps;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/zzaq;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/ads/interactivemedia/v3/impl/data/zzch;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/zzaq;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/zzaq;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract height()Ljava/lang/Integer;
.end method

.method public abstract width()Ljava/lang/Integer;
.end method
