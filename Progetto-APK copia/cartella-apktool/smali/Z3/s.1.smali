.class public final LZ3/s;
.super Landroid/webkit/WebView;
.source "SourceFile"


# static fields
.field public static final synthetic J:I


# instance fields
.field public final G:Landroid/os/Handler;

.field public final H:LZ3/w;

.field public I:Z


# direct methods
.method public constructor <init>(LZ3/u;Landroid/os/Handler;LZ3/w;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, LZ3/s;->I:Z

    .line 6
    .line 7
    iput-object p2, p0, LZ3/s;->G:Landroid/os/Handler;

    .line 8
    .line 9
    iput-object p3, p0, LZ3/s;->H:LZ3/w;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "("

    .line 2
    .line 3
    const-string v1, ");"

    .line 4
    .line 5
    invoke-static {p1, v0, p2, v1}, LA0/O;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, LZ3/m;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-direct {p2, v0, p0, p1}, LZ3/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, LZ3/s;->G:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
