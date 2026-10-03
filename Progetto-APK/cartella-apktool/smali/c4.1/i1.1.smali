.class public final Lc4/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final G:J

.field public final H:J

.field public final synthetic I:Lm2/e;


# direct methods
.method public constructor <init>(Lm2/e;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc4/i1;->I:Lm2/e;

    .line 5
    .line 6
    iput-wide p2, p0, Lc4/i1;->G:J

    .line 7
    .line 8
    iput-wide p4, p0, Lc4/i1;->H:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc4/i1;->I:Lm2/e;

    .line 2
    .line 3
    iget-object v0, v0, Lm2/e;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lc4/k1;

    .line 6
    .line 7
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lc4/l0;

    .line 10
    .line 11
    iget-object v0, v0, Lc4/l0;->P:Lc4/j0;

    .line 12
    .line 13
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/google/android/gms/internal/cast/X;

    .line 17
    .line 18
    const/4 v2, 0x6

    .line 19
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
