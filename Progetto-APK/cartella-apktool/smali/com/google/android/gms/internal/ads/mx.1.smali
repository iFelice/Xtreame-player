.class public final Lcom/google/android/gms/internal/ads/mx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public c:J

.field public d:J

.field public final e:Ljava/util/Random;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Random;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/mx;->e:Ljava/util/Random;

    .line 10
    .line 11
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/mx;->a:J

    .line 12
    .line 13
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/mx;->b:J

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/mx;->d:J

    .line 16
    .line 17
    const-wide/16 p1, 0x0

    .line 18
    .line 19
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/mx;->c:J

    .line 20
    .line 21
    return-void
.end method
