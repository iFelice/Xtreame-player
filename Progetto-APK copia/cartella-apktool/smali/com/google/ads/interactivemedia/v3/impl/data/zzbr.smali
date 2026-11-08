.class public abstract Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzps;
    zza = Lcom/google/ads/interactivemedia/v3/impl/data/zzad;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(JLcom/google/ads/interactivemedia/v3/api/AdErrorEvent;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;
    .locals 6

    .line 1
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-wide v0, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;->create(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;Lcom/google/ads/interactivemedia/v3/impl/data/zzbw;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;

    move-result-object p0

    return-object p0
.end method

.method public static create(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;
    .locals 6

    .line 2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;->create(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;Lcom/google/ads/interactivemedia/v3/impl/data/zzbw;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;

    move-result-object p0

    return-object p0
.end method

.method public static create(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;J)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;
    .locals 10

    .line 5
    new-instance v9, Lcom/google/ads/interactivemedia/v3/impl/data/zzad;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/data/zzad;-><init>(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;Lcom/google/ads/interactivemedia/v3/impl/data/zzbw;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v9
.end method

.method public static create(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;
    .locals 10

    .line 7
    new-instance v9, Lcom/google/ads/interactivemedia/v3/impl/data/zzad;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/data/zzad;-><init>(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;Lcom/google/ads/interactivemedia/v3/impl/data/zzbw;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v9
.end method

.method private static create(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;Lcom/google/ads/interactivemedia/v3/impl/data/zzbw;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;
    .locals 10

    .line 3
    new-instance v9, Lcom/google/ads/interactivemedia/v3/impl/data/zzad;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/data/zzad;-><init>(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;Lcom/google/ads/interactivemedia/v3/impl/data/zzbw;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v9
.end method

.method public static create(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;
    .locals 10

    .line 4
    new-instance v9, Lcom/google/ads/interactivemedia/v3/impl/data/zzad;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/ads/interactivemedia/v3/impl/data/zzad;-><init>(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;Lcom/google/ads/interactivemedia/v3/impl/data/zzbw;Ljava/lang/Long;Ljava/lang/String;)V

    return-object v9
.end method

.method public static create(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Ljava/lang/Throwable;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;
    .locals 6

    const/4 v4, 0x0

    .line 6
    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbw;->create(Ljava/lang/Throwable;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbw;

    move-result-object v5

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;->create(JLcom/google/ads/interactivemedia/v3/impl/data/zzbp;Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;Lcom/google/ads/interactivemedia/v3/impl/data/zzbw;)Lcom/google/ads/interactivemedia/v3/impl/data/zzbr;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract adErrorEvent()Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;
.end method

.method public abstract component()Lcom/google/ads/interactivemedia/v3/impl/data/zzbp;
.end method

.method public abstract latency()Ljava/lang/Long;
.end method

.method public abstract latencyMeasurementProtoBase64String()Ljava/lang/String;
.end method

.method public abstract loggableException()Lcom/google/ads/interactivemedia/v3/impl/data/zzbw;
.end method

.method public abstract method()Lcom/google/ads/interactivemedia/v3/impl/data/zzbq;
.end method

.method public abstract timestamp()J
.end method
