.class public final synthetic LC0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/u;
.implements Lp0/j;


# instance fields
.field public final synthetic G:LO0/p;

.field public final synthetic H:LO0/u;

.field public final synthetic I:Ljava/io/IOException;

.field public final synthetic J:Z

.field public final synthetic K:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;LO0/p;LO0/u;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC0/p;->K:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, LC0/p;->G:LO0/p;

    .line 7
    .line 8
    iput-object p3, p0, LC0/p;->H:LO0/u;

    .line 9
    .line 10
    iput-object p4, p0, LC0/p;->I:Ljava/io/IOException;

    .line 11
    .line 12
    iput-boolean p5, p0, LC0/p;->J:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, LC0/p;->K:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LO0/D;

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    check-cast v1, LO0/E;

    .line 7
    .line 8
    iget v2, v0, LO0/D;->a:I

    .line 9
    .line 10
    iget-object v6, p0, LC0/p;->I:Ljava/io/IOException;

    .line 11
    .line 12
    iget-boolean v7, p0, LC0/p;->J:Z

    .line 13
    .line 14
    iget-object v3, v0, LO0/D;->b:LO0/y;

    .line 15
    .line 16
    iget-object v4, p0, LC0/p;->G:LO0/p;

    .line 17
    .line 18
    iget-object v5, p0, LC0/p;->H:LO0/u;

    .line 19
    .line 20
    invoke-interface/range {v1 .. v7}, LO0/E;->s(ILO0/y;LO0/p;LO0/u;Ljava/io/IOException;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, LC0/c;

    .line 2
    .line 3
    check-cast p1, LC0/F;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LC0/p;->H:LO0/u;

    .line 9
    .line 10
    iget v0, v0, LO0/u;->a:I

    .line 11
    .line 12
    iput v0, p1, LC0/F;->w:I

    .line 13
    .line 14
    return-void
.end method
