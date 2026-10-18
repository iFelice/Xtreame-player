.class public final LZ3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:LZ3/u;

.field public final c:LZ3/i;

.field public final d:LZ3/q;

.field public final e:LZ3/Y;

.field public f:Landroid/app/Dialog;

.field public g:LZ3/s;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;

.field public final k:Ljava/util/concurrent/atomic/AtomicReference;

.field public l:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;LZ3/u;LZ3/i;LZ3/q;LZ3/X;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LZ3/l;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LZ3/l;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LZ3/l;->j:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, LZ3/l;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, LZ3/l;->l:Z

    .line 34
    .line 35
    iput-object p1, p0, LZ3/l;->a:Landroid/app/Application;

    .line 36
    .line 37
    iput-object p2, p0, LZ3/l;->b:LZ3/u;

    .line 38
    .line 39
    iput-object p3, p0, LZ3/l;->c:LZ3/i;

    .line 40
    .line 41
    iput-object p4, p0, LZ3/l;->d:LZ3/q;

    .line 42
    .line 43
    iput-object p5, p0, LZ3/l;->e:LZ3/Y;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lv4/d;Lv4/c;)V
    .locals 9

    .line 1
    iget-object v0, p0, LZ3/l;->e:LZ3/Y;

    .line 2
    .line 3
    check-cast v0, LZ3/t;

    .line 4
    .line 5
    iget-object v1, v0, LZ3/t;->G:LZ3/X;

    .line 6
    .line 7
    invoke-interface {v1}, LZ3/Y;->zza()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, LZ3/u;

    .line 12
    .line 13
    sget-object v2, LZ3/G;->a:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->a0(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, LZ3/t;->H:LZ3/X;

    .line 19
    .line 20
    check-cast v0, LZ3/x;

    .line 21
    .line 22
    invoke-virtual {v0}, LZ3/x;->a()LZ3/w;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v3, LZ3/s;

    .line 27
    .line 28
    invoke-direct {v3, v1, v2, v0}, LZ3/s;-><init>(LZ3/u;Landroid/os/Handler;LZ3/w;)V

    .line 29
    .line 30
    .line 31
    iput-object v3, p0, LZ3/l;->g:LZ3/s;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lk3/i;

    .line 60
    .line 61
    invoke-direct {v0, v3}, Lk3/i;-><init>(LZ3/s;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, LZ3/k;

    .line 68
    .line 69
    invoke-direct {v0, p1, p2}, LZ3/k;-><init>(Lv4/d;Lv4/c;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, LZ3/l;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, LZ3/l;->g:LZ3/s;

    .line 78
    .line 79
    iget-object p1, p0, LZ3/l;->d:LZ3/q;

    .line 80
    .line 81
    iget-object v4, p1, LZ3/q;->a:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v5, p1, LZ3/q;->b:Ljava/lang/String;

    .line 84
    .line 85
    const-string v6, "text/html"

    .line 86
    .line 87
    const-string v7, "UTF-8"

    .line 88
    .line 89
    const/4 v8, 0x0

    .line 90
    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance p1, Lcom/google/android/gms/internal/cast/X;

    .line 94
    .line 95
    const/4 p2, 0x2

    .line 96
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 97
    .line 98
    .line 99
    const-wide/16 v0, 0x2710

    .line 100
    .line 101
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    .line 103
    .line 104
    return-void
.end method
