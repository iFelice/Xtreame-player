.class public final LB0/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:LB0/X;


# direct methods
.method public constructor <init>(LB0/X;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LB0/S;->a:LB0/X;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, LB0/S;->a:LB0/X;

    .line 2
    .line 3
    iget-boolean v1, v0, LB0/X;->j0:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, LB0/X;->i0:LB0/H0;

    .line 8
    .line 9
    iget-boolean v1, v1, LB0/H0;->d:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v1, v0, LB0/X;->y0:Z

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :goto_0
    const/4 v1, 0x2

    .line 19
    iget-object v0, v0, LB0/X;->N:Lp0/I;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lp0/I;->e(I)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
