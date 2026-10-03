.class public final Lcom/google/android/gms/internal/ads/qt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LD4/b;

.field public final b:J

.field public final c:LP3/a;


# direct methods
.method public constructor <init>(LD4/b;JLP3/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qt;->a:LD4/b;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/qt;->c:LP3/a;

    .line 7
    .line 8
    check-cast p4, LP3/b;

    .line 9
    .line 10
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    add-long/2addr v0, p2

    .line 18
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/qt;->b:J

    .line 19
    .line 20
    return-void
.end method
