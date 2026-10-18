.class public final LU0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field public c:LK0/s;

.field public d:LK0/k;

.field public e:J

.field public f:Z

.field public g:Landroid/os/Handler;

.field public h:LU0/N;

.field public i:I

.field public final j:F

.field public k:Z

.field public l:J

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LU0/i;->a:Landroid/content/Context;

    .line 5
    .line 6
    sget-object v0, LK0/s;->g:LC0/g;

    .line 7
    .line 8
    iput-object v0, p0, LU0/i;->c:LK0/s;

    .line 9
    .line 10
    sget v0, LK0/j;->a:I

    .line 11
    .line 12
    new-instance v0, Lp0/C;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-direct {v0, p1, v1}, Lp0/C;-><init>(Landroid/content/Context;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, LU0/i;->d:LK0/k;

    .line 19
    .line 20
    const/high16 p1, 0x41f00000    # 30.0f

    .line 21
    .line 22
    iput p1, p0, LU0/i;->j:F

    .line 23
    .line 24
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iput-wide v0, p0, LU0/i;->l:J

    .line 30
    .line 31
    return-void
.end method
