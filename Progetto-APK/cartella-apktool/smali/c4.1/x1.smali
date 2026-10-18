.class public final synthetic Lc4/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc4/U;
.implements Lc4/H1;


# instance fields
.field public final synthetic G:Lc4/A1;


# direct methods
.method public synthetic constructor <init>(Lc4/A1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc4/x1;->G:Lc4/A1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lc4/x1;->G:Lc4/A1;

    .line 2
    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p5

    .line 8
    invoke-virtual/range {v0 .. v5}, Lc4/A1;->q(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lc4/x1;->G:Lc4/A1;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p1, v1, Lc4/A1;->R:Lc4/l0;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 14
    .line 15
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 16
    .line 17
    .line 18
    const-string p3, "AppId not known when logging event"

    .line 19
    .line 20
    iget-object p1, p1, Lc4/T;->L:Lc4/Q;

    .line 21
    .line 22
    invoke-virtual {p1, p2, p3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {v1}, Lc4/A1;->d()Lc4/j0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v7, Lk/g;

    .line 31
    .line 32
    const/16 v6, 0x11

    .line 33
    .line 34
    move-object v1, v7

    .line 35
    move-object v2, p0

    .line 36
    move-object v3, p1

    .line 37
    move-object v4, p2

    .line 38
    move-object v5, p3

    .line 39
    invoke-direct/range {v1 .. v6}, Lk/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v7}, Lc4/j0;->x(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
