.class public final synthetic LB0/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:LB0/q0;

.field public final synthetic H:Landroid/util/Pair;

.field public final synthetic I:LO0/p;

.field public final synthetic J:LO0/u;

.field public final synthetic K:Ljava/io/IOException;

.field public final synthetic L:Z


# direct methods
.method public synthetic constructor <init>(LB0/q0;Landroid/util/Pair;LO0/p;LO0/u;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB0/p0;->G:LB0/q0;

    .line 5
    .line 6
    iput-object p2, p0, LB0/p0;->H:Landroid/util/Pair;

    .line 7
    .line 8
    iput-object p3, p0, LB0/p0;->I:LO0/p;

    .line 9
    .line 10
    iput-object p4, p0, LB0/p0;->J:LO0/u;

    .line 11
    .line 12
    iput-object p5, p0, LB0/p0;->K:Ljava/io/IOException;

    .line 13
    .line 14
    iput-boolean p6, p0, LB0/p0;->L:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, LB0/p0;->G:LB0/q0;

    .line 2
    .line 3
    iget-object v0, v0, LB0/q0;->H:LB0/u0;

    .line 4
    .line 5
    iget-object v0, v0, LB0/u0;->h:LC0/a;

    .line 6
    .line 7
    iget-object v1, p0, LB0/p0;->H:Landroid/util/Pair;

    .line 8
    .line 9
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v5, v1

    .line 20
    check-cast v5, LO0/y;

    .line 21
    .line 22
    move-object v3, v0

    .line 23
    check-cast v3, LC0/A;

    .line 24
    .line 25
    iget-object v6, p0, LB0/p0;->I:LO0/p;

    .line 26
    .line 27
    iget-object v7, p0, LB0/p0;->J:LO0/u;

    .line 28
    .line 29
    iget-object v8, p0, LB0/p0;->K:Ljava/io/IOException;

    .line 30
    .line 31
    iget-boolean v9, p0, LB0/p0;->L:Z

    .line 32
    .line 33
    invoke-virtual/range {v3 .. v9}, LC0/A;->s(ILO0/y;LO0/p;LO0/u;Ljava/io/IOException;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
