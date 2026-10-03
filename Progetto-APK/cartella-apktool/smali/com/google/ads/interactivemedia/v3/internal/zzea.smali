.class public abstract Lcom/google/ads/interactivemedia/v3/internal/zzea;
.super Lcom/google/ads/interactivemedia/v3/internal/zzeb;
.source "SourceFile"


# instance fields
.field protected final zza:Ljava/util/HashSet;

.field protected final zzb:Lorg/json/JSONObject;

.field protected final zzc:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzdt;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzeb;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzdt;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzea;->zza:Ljava/util/HashSet;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zzea;->zzb:Lorg/json/JSONObject;

    .line 12
    .line 13
    iput-wide p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zzea;->zzc:J

    .line 14
    .line 15
    return-void
.end method
