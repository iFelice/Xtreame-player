.class public abstract Lo/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/support/customtabs/ICustomTabsService;

.field public final b:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo/e;->a:Landroid/support/customtabs/ICustomTabsService;

    .line 5
    .line 6
    iput-object p2, p0, Lo/e;->b:Landroid/content/ComponentName;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/b8;)Lo/j;
    .locals 4

    .line 1
    new-instance v0, Lo/d;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lo/d;-><init>(Lcom/google/android/gms/internal/ads/b8;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lo/e;->a:Landroid/support/customtabs/ICustomTabsService;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-interface {p1, v0}, Landroid/support/customtabs/ICustomTabsService;->newSession(Landroid/support/customtabs/ICustomTabsCallback;)Z

    .line 10
    .line 11
    .line 12
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v2, Lo/j;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v3, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v3, v2, Lo/j;->G:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object p1, v2, Lo/j;->H:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object v0, v2, Lo/j;->I:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object p1, p0, Lo/e;->b:Landroid/content/ComponentName;

    .line 33
    .line 34
    iput-object p1, v2, Lo/j;->J:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object v1, v2, Lo/j;->K:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v1, v2

    .line 39
    :catch_0
    :goto_0
    return-object v1
.end method
