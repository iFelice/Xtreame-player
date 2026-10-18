.class public final LD0/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:LD0/P;

.field public final synthetic c:LD0/S;


# direct methods
.method public constructor <init>(LD0/S;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LD0/Q;->c:LD0/S;

    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, LD0/Q;->a:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance p1, LD0/P;

    .line 18
    .line 19
    invoke-direct {p1, p0}, LD0/P;-><init>(LD0/Q;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, LD0/Q;->b:LD0/P;

    .line 23
    .line 24
    return-void
.end method
