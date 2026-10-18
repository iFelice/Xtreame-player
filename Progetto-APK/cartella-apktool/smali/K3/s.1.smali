.class public abstract LK3/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[LJ3/d;

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>([LJ3/d;ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LK3/s;->a:[LJ3/d;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    :cond_0
    iput-boolean v0, p0, LK3/s;->b:Z

    .line 13
    .line 14
    iput p3, p0, LK3/s;->c:I

    .line 15
    .line 16
    return-void
.end method

.method public static a()LK3/r;
    .locals 2

    .line 1
    new-instance v0, LK3/r;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, LK3/r;->b:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, v0, LK3/r;->a:I

    .line 11
    .line 12
    return-object v0
.end method
