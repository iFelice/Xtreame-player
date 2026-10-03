.class public final synthetic LB0/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:LB0/X;

.field public final synthetic H:I

.field public final synthetic I:Z


# direct methods
.method public synthetic constructor <init>(LB0/X;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB0/P;->G:LB0/X;

    .line 5
    .line 6
    iput p2, p0, LB0/P;->H:I

    .line 7
    .line 8
    iput-boolean p3, p0, LB0/P;->I:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, LB0/P;->G:LB0/X;

    .line 2
    .line 3
    iget-object v1, v0, LB0/X;->G:[LB0/F0;

    .line 4
    .line 5
    iget v2, p0, LB0/P;->H:I

    .line 6
    .line 7
    aget-object v1, v1, v2

    .line 8
    .line 9
    iget-object v1, v1, LB0/F0;->a:LB0/h;

    .line 10
    .line 11
    invoke-virtual {v1}, LB0/h;->getTrackType()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v0, v0, LB0/X;->d0:LC0/a;

    .line 16
    .line 17
    check-cast v0, LC0/A;

    .line 18
    .line 19
    invoke-virtual {v0}, LC0/A;->T()LC0/b;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v4, LC0/g;

    .line 24
    .line 25
    iget-boolean v5, p0, LB0/P;->I:Z

    .line 26
    .line 27
    invoke-direct {v4, v2, v1, v3, v5}, LC0/g;-><init>(IILC0/b;Z)V

    .line 28
    .line 29
    .line 30
    const/16 v1, 0x409

    .line 31
    .line 32
    invoke-virtual {v0, v3, v1, v4}, LC0/A;->U(LC0/b;ILp0/u;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
