.class public abstract LP0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/j;


# instance fields
.field public final G:J

.field public final H:Ls0/m;

.field public final I:I

.field public final J:Lm0/t;

.field public final K:I

.field public final L:Ljava/lang/Object;

.field public final M:J

.field public final N:J

.field public final O:Ls0/M;


# direct methods
.method public constructor <init>(Ls0/i;Ls0/m;ILm0/t;ILjava/lang/Object;JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ls0/M;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ls0/M;-><init>(Ls0/i;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LP0/f;->O:Ls0/M;

    .line 10
    .line 11
    iput-object p2, p0, LP0/f;->H:Ls0/m;

    .line 12
    .line 13
    iput p3, p0, LP0/f;->I:I

    .line 14
    .line 15
    iput-object p4, p0, LP0/f;->J:Lm0/t;

    .line 16
    .line 17
    iput p5, p0, LP0/f;->K:I

    .line 18
    .line 19
    iput-object p6, p0, LP0/f;->L:Ljava/lang/Object;

    .line 20
    .line 21
    iput-wide p7, p0, LP0/f;->M:J

    .line 22
    .line 23
    iput-wide p9, p0, LP0/f;->N:J

    .line 24
    .line 25
    sget-object p1, LO0/p;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, p0, LP0/f;->G:J

    .line 32
    .line 33
    return-void
.end method
