.class public final Lcom/google/ads/interactivemedia/v3/internal/zzpo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:LJ3/d;

.field public static final zzb:LJ3/d;

.field public static final zzc:[LJ3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, LJ3/d;

    .line 2
    .line 3
    const-string v1, "ADS_ID"

    .line 4
    .line 5
    const-wide/16 v2, 0x2

    .line 6
    .line 7
    invoke-direct {v0, v2, v3, v1}, LJ3/d;-><init>(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzpo;->zza:LJ3/d;

    .line 11
    .line 12
    new-instance v1, LJ3/d;

    .line 13
    .line 14
    const-string v2, "MAKE_REQUEST_WITH_SIGNALS"

    .line 15
    .line 16
    const-wide/16 v3, 0x1

    .line 17
    .line 18
    invoke-direct {v1, v3, v4, v2}, LJ3/d;-><init>(JLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/google/ads/interactivemedia/v3/internal/zzpo;->zzb:LJ3/d;

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    new-array v2, v2, [LJ3/d;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    aput-object v0, v2, v3

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    aput-object v1, v2, v0

    .line 31
    .line 32
    sput-object v2, Lcom/google/ads/interactivemedia/v3/internal/zzpo;->zzc:[LJ3/d;

    .line 33
    .line 34
    return-void
.end method
