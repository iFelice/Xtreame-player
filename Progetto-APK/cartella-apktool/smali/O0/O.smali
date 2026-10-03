.class public final LO0/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:LS0/a;

.field public d:LO0/O;


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LO0/O;->c:LS0/a;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 12
    .line 13
    .line 14
    iput-wide p2, p0, LO0/O;->a:J

    .line 15
    .line 16
    int-to-long v0, p1

    .line 17
    add-long/2addr p2, v0

    .line 18
    iput-wide p2, p0, LO0/O;->b:J

    .line 19
    .line 20
    return-void
.end method
