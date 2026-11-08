.class public final Lcom/google/android/gms/internal/cast/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:LD3/C;

.field public final d:LD3/b;

.field public final e:Lcom/google/android/gms/internal/cast/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;LD3/b;Lcom/google/android/gms/internal/cast/q;)V
    .locals 4

    .line 1
    iget-object v0, p2, LD3/b;->H:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p2, LD3/b;->G:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v1}, LU4/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p2, LD3/b;->H:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    new-instance v2, LC3/J;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "com.google.android.gms.cast.CATEGORY_CAST"

    .line 36
    .line 37
    iput-object v3, v2, LC3/J;->a:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v1, v2, LC3/J;->b:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, v2, LC3/J;->c:Ljava/util/Collection;

    .line 42
    .line 43
    invoke-static {v2}, LC3/J;->a(LC3/J;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v1, LD3/C;

    .line 51
    .line 52
    invoke-direct {v1, p0}, LD3/C;-><init>(Lcom/google/android/gms/internal/cast/e;)V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/e;->c:LD3/C;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/e;->a:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/e;->b:Ljava/lang/String;

    .line 70
    .line 71
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/e;->d:LD3/b;

    .line 72
    .line 73
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/e;->e:Lcom/google/android/gms/internal/cast/q;

    .line 74
    .line 75
    return-void

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string p2, "namespaces cannot be null"

    .line 79
    .line 80
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    const-string p2, "applicationId cannot be null"

    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
.end method
