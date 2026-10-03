.class public final Lp0/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/f;


# virtual methods
.method public final a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lp0/I;
    .locals 2

    .line 1
    new-instance v0, Lp0/I;

    .line 2
    .line 3
    new-instance v1, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lp0/I;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
