.class public Lpe/hf/black20/services/OTRServices;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic W:I


# instance fields
.field public G:Landroid/content/SharedPreferences;

.field public final H:Lc7/c;

.field public I:Ljava/util/ArrayList;

.field public final J:Landroid/os/Handler;

.field public K:Lcom/google/android/gms/internal/cast/X;

.field public final L:I

.field public M:I

.field public N:I

.field public O:Lorg/json/JSONObject;

.field public P:Ljava/lang/String;

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/Thread;

.field public V:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc7/c;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, p0, v1}, Lc7/c;-><init>(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lpe/hf/black20/services/OTRServices;->H:Lc7/c;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lpe/hf/black20/services/OTRServices;->I:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance v0, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lpe/hf/black20/services/OTRServices;->J:Landroid/os/Handler;

    .line 29
    .line 30
    const/16 v0, 0x4e20

    .line 31
    .line 32
    iput v0, p0, Lpe/hf/black20/services/OTRServices;->L:I

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lpe/hf/black20/services/OTRServices;->M:I

    .line 36
    .line 37
    iput v0, p0, Lpe/hf/black20/services/OTRServices;->N:I

    .line 38
    .line 39
    const-string v1, ""

    .line 40
    .line 41
    iput-object v1, p0, Lpe/hf/black20/services/OTRServices;->S:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v1, p0, Lpe/hf/black20/services/OTRServices;->T:Ljava/lang/String;

    .line 44
    .line 45
    iput-boolean v0, p0, Lpe/hf/black20/services/OTRServices;->V:Z

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lpe/hf/black20/services/OTRServices;->J:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lpe/hf/black20/services/OTRServices;->K:Lcom/google/android/gms/internal/cast/X;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lpe/hf/black20/services/OTRServices;->U:Ljava/lang/Thread;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    iget-object p1, p0, Lpe/hf/black20/services/OTRServices;->J:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance p2, Lcom/google/android/gms/internal/cast/X;

    .line 4
    .line 5
    const/16 p3, 0x1c

    .line 6
    .line 7
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lpe/hf/black20/services/OTRServices;->K:Lcom/google/android/gms/internal/cast/X;

    .line 11
    .line 12
    iget p3, p0, Lpe/hf/black20/services/OTRServices;->L:I

    .line 13
    .line 14
    int-to-long v0, p3

    .line 15
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method
