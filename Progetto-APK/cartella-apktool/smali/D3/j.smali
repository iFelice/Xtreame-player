.class public final LD3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:LD3/c;


# direct methods
.method public constructor <init>(LD3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LD3/j;->a:LD3/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, LD3/j;->a:LD3/c;

    .line 4
    .line 5
    iget-object v3, v2, LD3/c;->e:LD3/r;

    .line 6
    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    :try_start_0
    iget-object v3, v2, LD3/c;->j:LE3/j;

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    invoke-virtual {v3}, LE3/j;->r()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    iget-object v3, v2, LD3/c;->e:LD3/r;

    .line 21
    .line 22
    check-cast v3, LD3/p;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    sget-object v4, LD3/c;->m:LH3/b;

    .line 37
    .line 38
    const-class v5, LD3/r;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const/4 v6, 0x2

    .line 45
    new-array v6, v6, [Ljava/lang/Object;

    .line 46
    .line 47
    const-string v7, "onConnected"

    .line 48
    .line 49
    aput-object v7, v6, v0

    .line 50
    .line 51
    aput-object v5, v6, v1

    .line 52
    .line 53
    const-string v1, "Unable to call %s on %s."

    .line 54
    .line 55
    invoke-virtual {v4, v3, v1, v6}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :goto_2
    iget-object v1, v2, LD3/c;->l:Lcom/google/android/gms/internal/cast/P1;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    new-instance v2, LF/d;

    .line 63
    .line 64
    const/4 v3, 0x3

    .line 65
    invoke-direct {v2, v3, v0}, LF/d;-><init>(II)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/google/android/gms/internal/cast/a3;

    .line 69
    .line 70
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cast/a3;-><init>(LF/d;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/P1;->G:Lo/j;

    .line 74
    .line 75
    invoke-static {v1, v0}, Lo/j;->c(Lo/j;Lcom/google/android/gms/internal/cast/a3;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_3
    return-void
.end method
