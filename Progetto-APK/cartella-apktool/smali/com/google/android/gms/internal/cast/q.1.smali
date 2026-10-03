.class public final Lcom/google/android/gms/internal/cast/q;
.super Lcom/google/android/gms/internal/cast/g;
.source "SourceFile"


# static fields
.field public static final M:LH3/b;


# instance fields
.field public final H:LE1/H;

.field public final I:LD3/b;

.field public final J:Ljava/util/HashMap;

.field public final K:Lcom/google/android/gms/internal/cast/t;

.field public final L:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MediaRouterProxy"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/google/android/gms/internal/cast/q;->M:LH3/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LE1/H;LD3/b;LH3/t;)V
    .locals 3

    .line 1
    const-string v0, "com.google.android.gms.cast.framework.internal.IMediaRouter"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/cast/o;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/q;->J:Ljava/util/HashMap;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/q;->I:LD3/b;

    .line 17
    .line 18
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    sget-object v2, Lcom/google/android/gms/internal/cast/q;->M:LH3/b;

    .line 23
    .line 24
    if-gt p2, v0, :cond_0

    .line 25
    .line 26
    new-array p1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    iget-object p2, v2, LH3/b;->a:Ljava/lang/String;

    .line 29
    .line 30
    const-string p3, "Don\'t need to set MediaRouterParams for Android S v2 or below"

    .line 31
    .line 32
    invoke-virtual {v2, p3, p1}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-array p2, v1, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string v0, "Set up MediaRouterParams based on module flag and CastOptions for Android T or above"

    .line 43
    .line 44
    invoke-virtual {v2, v0, p2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance p2, Lcom/google/android/gms/internal/cast/t;

    .line 48
    .line 49
    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/cast/t;-><init>(LD3/b;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/q;->K:Lcom/google/android/gms/internal/cast/t;

    .line 53
    .line 54
    new-instance p2, Landroid/content/Intent;

    .line 55
    .line 56
    const-class v0, LE1/S;

    .line 57
    .line 58
    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    xor-int/lit8 p1, p1, 0x1

    .line 81
    .line 82
    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/q;->L:Z

    .line 83
    .line 84
    if-eqz p1, :cond_1

    .line 85
    .line 86
    sget-object p1, Lcom/google/android/gms/internal/cast/d0;->q0:Lcom/google/android/gms/internal/cast/d0;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/D0;->a(Lcom/google/android/gms/internal/cast/d0;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    const-string p1, "com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED"

    .line 92
    .line 93
    filled-new-array {p1}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p4, p1}, LH3/t;->c([Ljava/lang/String;)Lg4/h;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance p2, LF/i;

    .line 102
    .line 103
    const/16 p4, 0xf

    .line 104
    .line 105
    invoke-direct {p2, p4, p0, p3}, LF/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lg4/h;->a(Lg4/d;)Lg4/r;

    .line 109
    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public final j0(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, LE1/H;->b()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v1, LE1/y;

    .line 19
    .line 20
    invoke-direct {v1, v0, p1}, LE1/y;-><init>(LE1/A;Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object p1, v0, LE1/A;->D:LE1/y;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, LE1/y;->a()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iput-object v1, v0, LE1/A;->D:LE1/y;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, LE1/A;->n()V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final r1(LE1/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/q;->J:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/Set;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, LE1/q;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, LE1/H;->e(LE1/q;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    return-void
.end method

.method public final v0(LE1/p;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/q;->J:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Set;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, LE1/q;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/q;->H:LE1/H;

    .line 29
    .line 30
    invoke-virtual {v2, p1, v1, p2}, LE1/H;->a(LE1/p;LE1/q;I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :goto_1
    return-void
.end method
