.class public final Lt1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x100

    .line 3
    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lp0/E;

    .line 10
    .line 11
    invoke-direct {p1}, Lp0/E;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lt1/a;->i:Ljava/lang/Object;

    .line 15
    .line 16
    new-array p1, v1, [I

    .line 17
    .line 18
    iput-object p1, p0, Lt1/a;->a:[I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/jr;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/jr;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lt1/a;->i:Ljava/lang/Object;

    .line 30
    .line 31
    new-array p1, v1, [I

    .line 32
    .line 33
    iput-object p1, p0, Lt1/a;->a:[I

    .line 34
    .line 35
    return-void
.end method
