.class public final Lcom/google/android/gms/internal/ads/Xy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/jr;

.field public H:J

.field public I:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Xy;->H:J

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Xy;->G:Lcom/google/android/gms/internal/ads/jr;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/Xy;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Xy;->H:J

    .line 4
    .line 5
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Xy;->H:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Xy;->I:J

    .line 15
    .line 16
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/Xy;->I:J

    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method
