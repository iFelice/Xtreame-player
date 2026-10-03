.class public final Lm2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a;
.implements Lq1/m;


# static fields
.field public static L:Lm2/i;


# instance fields
.field public final synthetic G:I

.field public H:Ljava/lang/Object;

.field public I:Ljava/lang/Object;

.field public J:Ljava/lang/Object;

.field public K:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    iput p1, p0, Lm2/i;->G:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Lu/e;

    const/16 v0, 0xa

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2}, Lu/e;-><init>(II)V

    iput-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 4
    new-instance p1, Lr/m;

    .line 5
    invoke-direct {p1, v1}, Lr/m;-><init>(I)V

    .line 6
    iput-object p1, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 8
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lm2/i;->K:Ljava/lang/Object;

    return-void

    .line 9
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 11
    new-instance p1, Landroid/os/Handler;

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, LH2/g;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LH2/g;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lm2/i;->I:Ljava/lang/Object;

    return-void

    .line 13
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    .line 14
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/i;->I:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/i;->J:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    .line 16
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/i;->K:Ljava/lang/Object;

    return-void

    .line 17
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 21
    const-string p1, ""

    iput-object p1, p0, Lm2/i;->K:Ljava/lang/Object;

    return-void

    .line 22
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance p1, Lr/f;

    .line 24
    invoke-direct {p1, v1}, Lr/m;-><init>(I)V

    .line 25
    iput-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 26
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 27
    new-instance p1, Lr/j;

    invoke-direct {p1}, Lr/j;-><init>()V

    iput-object p1, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 28
    new-instance p1, Lr/f;

    .line 29
    invoke-direct {p1, v1}, Lr/m;-><init>(I)V

    .line 30
    iput-object p1, p0, Lm2/i;->K:Ljava/lang/Object;

    return-void

    .line 31
    :cond_4
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1}, Lm2/i;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(LP1/x;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lm2/i;->G:I

    .line 52
    iput-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 53
    new-instance v1, Lm2/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lm2/b;-><init>(Ljava/lang/Object;LP1/x;I)V

    iput-object v1, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 54
    new-instance v1, Lm2/h;

    invoke-direct {v1, p0, p1, v0}, Lm2/h;-><init>(Ljava/lang/Object;LP1/x;I)V

    iput-object v1, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 55
    new-instance v0, Lm2/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lm2/h;-><init>(Ljava/lang/Object;LP1/x;I)V

    iput-object v0, p0, Lm2/i;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 94
    iput v0, p0, Lm2/i;->G:I

    .line 95
    iput-object p1, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 96
    iput-object p2, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 97
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 98
    new-instance p1, Lr/m;

    invoke-direct {p1}, Lr/m;-><init>()V

    iput-object p1, p0, Lm2/i;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/pal/B4;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    .line 40
    iput v0, p0, Lm2/i;->G:I

    .line 41
    new-instance v0, Ljava/util/HashMap;

    .line 42
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/B4;->a:Ljava/util/HashMap;

    .line 43
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    .line 44
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/B4;->b:Ljava/util/HashMap;

    .line 45
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lm2/i;->I:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    .line 46
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/B4;->c:Ljava/util/HashMap;

    .line 47
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lm2/i;->J:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    .line 48
    iget-object p1, p1, Lcom/google/android/gms/internal/pal/B4;->d:Ljava/util/HashMap;

    .line 49
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lm2/i;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/O2;Lcom/google/protobuf/S2;Ljava/lang/Object;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    .line 57
    iput v0, p0, Lm2/i;->G:I

    .line 58
    iput-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 59
    const-string p1, ""

    iput-object p1, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 61
    iput-object p3, p0, Lm2/i;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 10

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 69
    iput v0, p0, Lm2/i;->G:I

    .line 70
    new-instance v0, Lp0/E;

    invoke-direct {v0}, Lp0/E;-><init>()V

    iput-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 71
    new-instance v0, Lp0/E;

    invoke-direct {v0}, Lp0/E;-><init>()V

    iput-object v0, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 72
    new-instance v0, Ly1/a;

    invoke-direct {v0}, Ly1/a;-><init>()V

    iput-object v0, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 74
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lp0/M;->a:Ljava/lang/String;

    .line 75
    const-string v1, "\\r?\\n"

    const/4 v3, -0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 76
    array-length v1, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, p1, v4

    .line 77
    const-string v6, "palette: "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    const-string v6, ","

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 80
    array-length v6, v5

    new-array v6, v6, [I

    iput-object v6, v0, Ly1/a;->d:[I

    const/4 v6, 0x0

    .line 81
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 82
    iget-object v7, v0, Ly1/a;->d:[I

    aget-object v8, v5, v6

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    .line 83
    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v8, 0x0

    .line 84
    :goto_2
    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 85
    :cond_0
    const-string v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 87
    const-string v6, "x"

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 88
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 89
    :try_start_1
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Ly1/a;->e:I

    const/4 v6, 0x1

    .line 90
    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Ly1/a;->f:I

    .line 91
    iput-boolean v6, v0, Ly1/a;->b:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    .line 92
    const-string v6, "VobsubParser"

    const-string v7, "Parsing IDX failed"

    invoke-static {v6, v7, v5}, Lp0/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 63
    iput v0, p0, Lm2/i;->G:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lm2/i;->K:Ljava/lang/Object;

    .line 66
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 67
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/i;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentMap;Lcom/google/android/gms/internal/pal/A3;Lcom/google/android/gms/internal/pal/M4;Ljava/lang/Class;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 33
    iput v0, p0, Lm2/i;->G:I

    .line 34
    iput-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    iput-object p2, p0, Lm2/i;->I:Ljava/lang/Object;

    iput-object p4, p0, Lm2/i;->J:Ljava/lang/Object;

    iput-object p3, p0, Lm2/i;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lm2/i;Lcom/google/android/gms/internal/atv_ads_framework/x0;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 36
    iput v0, p0, Lm2/i;->G:I

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm2/i;->J:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    .line 38
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lm2/i;->K:Ljava/lang/Object;

    iput-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    iput-object p2, p0, Lm2/i;->I:Ljava/lang/Object;

    return-void
.end method

.method public static p(JLjava/util/Map;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/util/Map$Entry;

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/Long;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    cmp-long v5, v3, p0

    .line 37
    .line 38
    if-gtz v5, :cond_0

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-ge p0, p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    add-int/lit8 p0, p0, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lm2/i;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lm2/i;->B(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v1, p1, p2}, Lm2/i;->A(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    iget-object v1, p0, Lm2/i;->K:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Ljava/util/Map;

    .line 31
    .line 32
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    if-nez p2, :cond_3

    .line 40
    .line 41
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final B(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lm2/i;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lm2/i;->B(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    return p1
.end method

.method public final a()V
    .locals 1

    .line 1
    iget v0, p0, Lm2/i;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final b([BIILq1/l;Lp0/j;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lp0/E;

    .line 8
    .line 9
    add-int v3, v1, p3

    .line 10
    .line 11
    move-object/from16 v4, p1

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, Lp0/E;->J(I[B)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lp0/E;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lp0/E;->L(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lm2/i;->K:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljava/util/zip/Inflater;

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Ljava/util/zip/Inflater;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/zip/Inflater;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lm2/i;->K:Ljava/lang/Object;

    .line 35
    .line 36
    :cond_0
    iget-object v1, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lp0/E;

    .line 39
    .line 40
    iget-object v2, v0, Lm2/i;->I:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lp0/E;

    .line 43
    .line 44
    iget-object v3, v0, Lm2/i;->K:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Ljava/util/zip/Inflater;

    .line 47
    .line 48
    sget-object v4, Lp0/M;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1}, Lp0/E;->a()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-lez v4, :cond_1

    .line 55
    .line 56
    iget-object v4, v1, Lp0/E;->a:[B

    .line 57
    .line 58
    iget v5, v1, Lp0/E;->b:I

    .line 59
    .line 60
    aget-byte v4, v4, v5

    .line 61
    .line 62
    and-int/lit16 v4, v4, 0xff

    .line 63
    .line 64
    const/16 v5, 0x78

    .line 65
    .line 66
    if-ne v4, v5, :cond_1

    .line 67
    .line 68
    invoke-static {v1, v2, v3}, Lp0/M;->K(Lp0/E;Lp0/E;Ljava/util/zip/Inflater;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    iget-object v1, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Lp0/E;

    .line 77
    .line 78
    iget-object v2, v0, Lm2/i;->I:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v2, Lp0/E;

    .line 81
    .line 82
    iget-object v3, v2, Lp0/E;->a:[B

    .line 83
    .line 84
    iget v2, v2, Lp0/E;->c:I

    .line 85
    .line 86
    invoke-virtual {v1, v2, v3}, Lp0/E;->J(I[B)V

    .line 87
    .line 88
    .line 89
    :cond_1
    iget-object v1, v0, Lm2/i;->J:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v1, Ly1/a;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    iput-boolean v2, v1, Ly1/a;->c:Z

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    iput-object v3, v1, Ly1/a;->g:Landroid/graphics/Rect;

    .line 98
    .line 99
    const/4 v4, -0x1

    .line 100
    iput v4, v1, Ly1/a;->h:I

    .line 101
    .line 102
    iput v4, v1, Ly1/a;->i:I

    .line 103
    .line 104
    iget-object v1, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Lp0/E;

    .line 107
    .line 108
    invoke-virtual {v1}, Lp0/E;->a()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    const/4 v5, 0x2

    .line 113
    if-lt v1, v5, :cond_a

    .line 114
    .line 115
    iget-object v6, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v6, Lp0/E;

    .line 118
    .line 119
    invoke-virtual {v6}, Lp0/E;->F()I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eq v6, v1, :cond_2

    .line 124
    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :cond_2
    iget-object v1, v0, Lm2/i;->J:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v1, Ly1/a;

    .line 130
    .line 131
    iget-object v6, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v6, Lp0/E;

    .line 134
    .line 135
    iget-object v7, v1, Ly1/a;->d:[I

    .line 136
    .line 137
    const/4 v8, 0x1

    .line 138
    if-eqz v7, :cond_8

    .line 139
    .line 140
    iget-boolean v9, v1, Ly1/a;->b:Z

    .line 141
    .line 142
    if-nez v9, :cond_3

    .line 143
    .line 144
    goto/16 :goto_1

    .line 145
    .line 146
    :cond_3
    invoke-virtual {v6}, Lp0/E;->F()I

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    sub-int/2addr v9, v5

    .line 151
    invoke-virtual {v6, v9}, Lp0/E;->M(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6}, Lp0/E;->F()I

    .line 155
    .line 156
    .line 157
    move-result v9

    .line 158
    :goto_0
    :pswitch_0
    iget v10, v6, Lp0/E;->b:I

    .line 159
    .line 160
    if-ge v10, v9, :cond_8

    .line 161
    .line 162
    invoke-virtual {v6}, Lp0/E;->a()I

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-lez v10, :cond_8

    .line 167
    .line 168
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    const/4 v11, 0x4

    .line 173
    const/4 v12, 0x3

    .line 174
    iget-object v13, v1, Ly1/a;->a:[I

    .line 175
    .line 176
    packed-switch v10, :pswitch_data_0

    .line 177
    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :pswitch_1
    invoke-virtual {v6}, Lp0/E;->a()I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-ge v10, v11, :cond_4

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :cond_4
    invoke-virtual {v6}, Lp0/E;->F()I

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    iput v10, v1, Ly1/a;->h:I

    .line 194
    .line 195
    invoke-virtual {v6}, Lp0/E;->F()I

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    iput v10, v1, Ly1/a;->i:I

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :pswitch_2
    invoke-virtual {v6}, Lp0/E;->a()I

    .line 203
    .line 204
    .line 205
    move-result v10

    .line 206
    const/4 v12, 0x6

    .line 207
    if-ge v10, v12, :cond_5

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :cond_5
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 216
    .line 217
    .line 218
    move-result v12

    .line 219
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 220
    .line 221
    .line 222
    move-result v13

    .line 223
    shl-int/2addr v10, v11

    .line 224
    shr-int/lit8 v14, v12, 0x4

    .line 225
    .line 226
    or-int/2addr v10, v14

    .line 227
    and-int/lit8 v12, v12, 0xf

    .line 228
    .line 229
    shl-int/lit8 v12, v12, 0x8

    .line 230
    .line 231
    or-int/2addr v12, v13

    .line 232
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 233
    .line 234
    .line 235
    move-result v13

    .line 236
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 237
    .line 238
    .line 239
    move-result v14

    .line 240
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 241
    .line 242
    .line 243
    move-result v15

    .line 244
    shl-int/lit8 v11, v13, 0x4

    .line 245
    .line 246
    shr-int/lit8 v13, v14, 0x4

    .line 247
    .line 248
    or-int/2addr v11, v13

    .line 249
    and-int/lit8 v13, v14, 0xf

    .line 250
    .line 251
    shl-int/lit8 v13, v13, 0x8

    .line 252
    .line 253
    or-int/2addr v13, v15

    .line 254
    new-instance v14, Landroid/graphics/Rect;

    .line 255
    .line 256
    add-int/2addr v12, v8

    .line 257
    add-int/2addr v13, v8

    .line 258
    invoke-direct {v14, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 259
    .line 260
    .line 261
    iput-object v14, v1, Ly1/a;->g:Landroid/graphics/Rect;

    .line 262
    .line 263
    goto :goto_0

    .line 264
    :pswitch_3
    invoke-virtual {v6}, Lp0/E;->a()I

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    if-lt v10, v5, :cond_8

    .line 269
    .line 270
    iget-boolean v10, v1, Ly1/a;->c:Z

    .line 271
    .line 272
    if-nez v10, :cond_6

    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_6
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 276
    .line 277
    .line 278
    move-result v10

    .line 279
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 280
    .line 281
    .line 282
    move-result v11

    .line 283
    aget v14, v13, v12

    .line 284
    .line 285
    shr-int/lit8 v15, v10, 0x4

    .line 286
    .line 287
    invoke-static {v14, v15}, Ly1/a;->c(II)I

    .line 288
    .line 289
    .line 290
    move-result v14

    .line 291
    aput v14, v13, v12

    .line 292
    .line 293
    aget v12, v13, v5

    .line 294
    .line 295
    and-int/lit8 v10, v10, 0xf

    .line 296
    .line 297
    invoke-static {v12, v10}, Ly1/a;->c(II)I

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    aput v10, v13, v5

    .line 302
    .line 303
    aget v10, v13, v8

    .line 304
    .line 305
    shr-int/lit8 v12, v11, 0x4

    .line 306
    .line 307
    invoke-static {v10, v12}, Ly1/a;->c(II)I

    .line 308
    .line 309
    .line 310
    move-result v10

    .line 311
    aput v10, v13, v8

    .line 312
    .line 313
    aget v10, v13, v2

    .line 314
    .line 315
    and-int/lit8 v11, v11, 0xf

    .line 316
    .line 317
    invoke-static {v10, v11}, Ly1/a;->c(II)I

    .line 318
    .line 319
    .line 320
    move-result v10

    .line 321
    aput v10, v13, v2

    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :pswitch_4
    invoke-virtual {v6}, Lp0/E;->a()I

    .line 326
    .line 327
    .line 328
    move-result v10

    .line 329
    if-ge v10, v5, :cond_7

    .line 330
    .line 331
    goto :goto_1

    .line 332
    :cond_7
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 333
    .line 334
    .line 335
    move-result v10

    .line 336
    invoke-virtual {v6}, Lp0/E;->z()I

    .line 337
    .line 338
    .line 339
    move-result v11

    .line 340
    shr-int/lit8 v14, v10, 0x4

    .line 341
    .line 342
    invoke-static {v7, v14}, Ly1/a;->a([II)I

    .line 343
    .line 344
    .line 345
    move-result v14

    .line 346
    aput v14, v13, v12

    .line 347
    .line 348
    and-int/lit8 v10, v10, 0xf

    .line 349
    .line 350
    invoke-static {v7, v10}, Ly1/a;->a([II)I

    .line 351
    .line 352
    .line 353
    move-result v10

    .line 354
    aput v10, v13, v5

    .line 355
    .line 356
    shr-int/lit8 v10, v11, 0x4

    .line 357
    .line 358
    invoke-static {v7, v10}, Ly1/a;->a([II)I

    .line 359
    .line 360
    .line 361
    move-result v10

    .line 362
    aput v10, v13, v8

    .line 363
    .line 364
    and-int/lit8 v10, v11, 0xf

    .line 365
    .line 366
    invoke-static {v7, v10}, Ly1/a;->a([II)I

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    aput v10, v13, v2

    .line 371
    .line 372
    iput-boolean v8, v1, Ly1/a;->c:Z

    .line 373
    .line 374
    goto/16 :goto_0

    .line 375
    .line 376
    :cond_8
    :goto_1
    iget-object v1, v0, Lm2/i;->J:Ljava/lang/Object;

    .line 377
    .line 378
    check-cast v1, Ly1/a;

    .line 379
    .line 380
    iget-object v6, v0, Lm2/i;->H:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v6, Lp0/E;

    .line 383
    .line 384
    iget-object v7, v1, Ly1/a;->d:[I

    .line 385
    .line 386
    if-eqz v7, :cond_a

    .line 387
    .line 388
    iget-boolean v7, v1, Ly1/a;->b:Z

    .line 389
    .line 390
    if-eqz v7, :cond_a

    .line 391
    .line 392
    iget-boolean v7, v1, Ly1/a;->c:Z

    .line 393
    .line 394
    if-eqz v7, :cond_a

    .line 395
    .line 396
    iget-object v7, v1, Ly1/a;->g:Landroid/graphics/Rect;

    .line 397
    .line 398
    if-eqz v7, :cond_a

    .line 399
    .line 400
    iget v9, v1, Ly1/a;->h:I

    .line 401
    .line 402
    if-eq v9, v4, :cond_a

    .line 403
    .line 404
    iget v9, v1, Ly1/a;->i:I

    .line 405
    .line 406
    if-eq v9, v4, :cond_a

    .line 407
    .line 408
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    if-lt v4, v5, :cond_a

    .line 413
    .line 414
    iget-object v4, v1, Ly1/a;->g:Landroid/graphics/Rect;

    .line 415
    .line 416
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-ge v4, v5, :cond_9

    .line 421
    .line 422
    goto :goto_2

    .line 423
    :cond_9
    iget-object v3, v1, Ly1/a;->g:Landroid/graphics/Rect;

    .line 424
    .line 425
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 426
    .line 427
    .line 428
    move-result v4

    .line 429
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    mul-int v5, v5, v4

    .line 434
    .line 435
    new-array v4, v5, [I

    .line 436
    .line 437
    new-instance v5, Lp0/D;

    .line 438
    .line 439
    invoke-direct {v5}, Lp0/D;-><init>()V

    .line 440
    .line 441
    .line 442
    iget v7, v1, Ly1/a;->h:I

    .line 443
    .line 444
    invoke-virtual {v6, v7}, Lp0/E;->L(I)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v5, v6}, Lp0/D;->q(Lp0/E;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1, v5, v8, v3, v4}, Ly1/a;->b(Lp0/D;ZLandroid/graphics/Rect;[I)V

    .line 451
    .line 452
    .line 453
    iget v7, v1, Ly1/a;->i:I

    .line 454
    .line 455
    invoke-virtual {v6, v7}, Lp0/E;->L(I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v5, v6}, Lp0/D;->q(Lp0/E;)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v1, v5, v2, v3, v4}, Ly1/a;->b(Lp0/D;ZLandroid/graphics/Rect;[I)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 473
    .line 474
    invoke-static {v4, v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 475
    .line 476
    .line 477
    move-result-object v11

    .line 478
    iget v2, v3, Landroid/graphics/Rect;->left:I

    .line 479
    .line 480
    int-to-float v2, v2

    .line 481
    iget v4, v1, Ly1/a;->e:I

    .line 482
    .line 483
    int-to-float v4, v4

    .line 484
    div-float v15, v2, v4

    .line 485
    .line 486
    iget v2, v3, Landroid/graphics/Rect;->top:I

    .line 487
    .line 488
    int-to-float v2, v2

    .line 489
    iget v4, v1, Ly1/a;->f:I

    .line 490
    .line 491
    int-to-float v4, v4

    .line 492
    div-float v12, v2, v4

    .line 493
    .line 494
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    int-to-float v2, v2

    .line 499
    iget v4, v1, Ly1/a;->e:I

    .line 500
    .line 501
    int-to-float v4, v4

    .line 502
    div-float v19, v2, v4

    .line 503
    .line 504
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    int-to-float v2, v2

    .line 509
    iget v1, v1, Ly1/a;->f:I

    .line 510
    .line 511
    int-to-float v1, v1

    .line 512
    div-float v20, v2, v1

    .line 513
    .line 514
    new-instance v3, Lo0/b;

    .line 515
    .line 516
    move-object v7, v3

    .line 517
    const/16 v24, 0x0

    .line 518
    .line 519
    const/16 v25, 0x0

    .line 520
    .line 521
    const/4 v8, 0x0

    .line 522
    const/4 v9, 0x0

    .line 523
    move-object v10, v9

    .line 524
    const/4 v13, 0x0

    .line 525
    const/4 v14, 0x0

    .line 526
    const/16 v16, 0x0

    .line 527
    .line 528
    const/high16 v17, -0x80000000

    .line 529
    .line 530
    move/from16 v23, v17

    .line 531
    .line 532
    const v18, -0x800001

    .line 533
    .line 534
    .line 535
    const/16 v21, 0x0

    .line 536
    .line 537
    const/high16 v22, -0x1000000

    .line 538
    .line 539
    invoke-direct/range {v7 .. v25}, Lo0/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI)V

    .line 540
    .line 541
    .line 542
    :cond_a
    :goto_2
    new-instance v1, Lq1/a;

    .line 543
    .line 544
    if-eqz v3, :cond_b

    .line 545
    .line 546
    invoke-static {v3}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    :goto_3
    move-object v5, v2

    .line 551
    goto :goto_4

    .line 552
    :cond_b
    sget-object v2, Lz4/H;->H:Lz4/F;

    .line 553
    .line 554
    sget-object v2, Lz4/d0;->K:Lz4/d0;

    .line 555
    .line 556
    goto :goto_3

    .line 557
    :goto_4
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    const-wide/32 v8, 0x4c4b40

    .line 563
    .line 564
    .line 565
    move-object v4, v1

    .line 566
    invoke-direct/range {v4 .. v9}, Lq1/a;-><init>(Ljava/util/List;JJ)V

    .line 567
    .line 568
    .line 569
    move-object/from16 v2, p5

    .line 570
    .line 571
    invoke-interface {v2, v1}, Lp0/j;->accept(Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    return-void

    .line 575
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic c(I[BI)Lq1/d;
    .locals 0

    .line 1
    invoke-static {p0, p2, p1, p3}, Lcom/google/protobuf/U2;->b(Lq1/m;[BII)Lq1/b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final d(Lj/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lm2/i;->k(Lj/b;)Lj/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e(Lj/b;Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lm2/i;->k(Lj/b;)Lj/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Lk/v;

    .line 10
    .line 11
    iget-object v2, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, Landroid/content/Context;

    .line 14
    .line 15
    check-cast p2, LI/b;

    .line 16
    .line 17
    invoke-direct {v1, v2, p2}, Lk/v;-><init>(Landroid/content/Context;LI/b;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public final f(Lj/b;Lk/o;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lm2/i;->k(Lj/b;)Lj/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p2}, Lm2/i;->l(Lk/o;)Landroid/view/Menu;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final g()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method public final h(Lj/b;Lk/o;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/view/ActionMode$Callback;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lm2/i;->k(Lj/b;)Lj/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p2}, Lm2/i;->l(Lk/o;)Landroid/view/Menu;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final i(Lz4/H;)Ljava/util/ArrayList;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/Map;

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lm2/i;->p(JLjava/util/Map;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ljava/util/Map;

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lm2/i;->p(JLjava/util/Map;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ge v1, v2, :cond_1

    .line 30
    .line 31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, LF0/b;

    .line 36
    .line 37
    iget-object v3, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Ljava/util/Map;

    .line 40
    .line 41
    iget-object v4, v2, LF0/b;->b:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    iget-object v3, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v3, Ljava/util/Map;

    .line 52
    .line 53
    iget v4, v2, LF0/b;->c:I

    .line 54
    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_0

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return-object v0
.end method

.method public final j(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 4

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lr/m;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_0
    if-ge v2, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p0, v3, p2, p3}, Lm2/i;->j(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 41
    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    const-string p2, "This graph contains cyclic dependencies"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public final k(Lj/b;)Lj/f;
    .locals 4

    .line 1
    iget-object v0, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lj/f;

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v3, v2, Lj/f;->b:Lj/b;

    .line 25
    .line 26
    if-ne v3, p1, :cond_0

    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lj/f;

    .line 33
    .line 34
    iget-object v1, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Landroid/content/Context;

    .line 37
    .line 38
    invoke-direct {v0, v1, p1}, Lj/f;-><init>(Landroid/content/Context;Lj/b;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public final l(Lk/o;)Landroid/view/Menu;
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/i;->K:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lr/m;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lr/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/view/Menu;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lk/D;

    .line 14
    .line 15
    iget-object v1, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v0, v1, p1}, Lk/D;-><init>(Landroid/content/Context;LI/a;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lm2/i;->K:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lr/m;

    .line 25
    .line 26
    invoke-virtual {v1, p1, v0}, Lr/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v0
.end method

.method public final m(Lm2/j;)Lm2/g;
    .locals 6

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v1, v0}, LP1/z;->N(ILjava/lang/String;)LP1/z;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p1, Lm2/j;->a:Ljava/lang/String;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v3}, LP1/z;->J(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0, v3, v2}, LP1/z;->g(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget p1, p1, Lm2/j;->b:I

    .line 26
    .line 27
    int-to-long v2, p1

    .line 28
    invoke-virtual {v0, v1, v2, v3}, LP1/z;->w(IJ)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, LP1/x;

    .line 34
    .line 35
    invoke-virtual {p1}, LP1/x;->b()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, LP1/x;

    .line 41
    .line 42
    invoke-static {p1, v0}, LZ3/C;->h(LP1/x;LP1/z;)Landroid/database/Cursor;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :try_start_0
    const-string v1, "work_spec_id"

    .line 47
    .line 48
    invoke-static {p1, v1}, LQ3/b;->i(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const-string v2, "generation"

    .line 53
    .line 54
    invoke-static {p1, v2}, LQ3/b;->i(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const-string v3, "system_id"

    .line 59
    .line 60
    invoke-static {p1, v3}, LQ3/b;->i(Landroid/database/Cursor;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/4 v5, 0x0

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    :goto_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    new-instance v3, Lm2/g;

    .line 91
    .line 92
    invoke-direct {v3, v5, v1, v2}, Lm2/g;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    move-object v5, v3

    .line 96
    goto :goto_2

    .line 97
    :catchall_0
    move-exception v1

    .line 98
    goto :goto_3

    .line 99
    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, LP1/z;->O()V

    .line 103
    .line 104
    .line 105
    return-object v5

    .line 106
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, LP1/z;->O()V

    .line 110
    .line 111
    .line 112
    throw v1
.end method

.method public final n(Lm2/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LP1/x;

    .line 4
    .line 5
    invoke-virtual {v0}, LP1/x;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, LP1/x;

    .line 11
    .line 12
    invoke-virtual {v0}, LP1/x;->c()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, LP1/e;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, LP1/e;->u(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, LP1/x;

    .line 25
    .line 26
    invoke-virtual {p1}, LP1/x;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, LP1/x;

    .line 32
    .line 33
    invoke-virtual {p1}, LP1/x;->j()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    iget-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, LP1/x;

    .line 41
    .line 42
    invoke-virtual {v0}, LP1/x;->j()V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {v1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public final q(Lz4/H;)LF0/b;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lm2/i;->i(Lz4/H;)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Ly4/k;->F(Ljava/util/AbstractCollection;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, LF0/b;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance v0, LK/b;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, v1}, LK/b;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, LF0/b;

    .line 40
    .line 41
    iget v3, v3, LF0/b;->c:I

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-ge v4, v5, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, LF0/b;

    .line 55
    .line 56
    iget v6, v5, LF0/b;->c:I

    .line 57
    .line 58
    if-eq v3, v6, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-ne v3, v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, LF0/b;

    .line 71
    .line 72
    return-object p1

    .line 73
    :cond_1
    new-instance v6, Landroid/util/Pair;

    .line 74
    .line 75
    iget v7, v5, LF0/b;->d:I

    .line 76
    .line 77
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    iget-object v5, v5, LF0/b;->b:Ljava/lang/String;

    .line 82
    .line 83
    invoke-direct {v6, v5, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    add-int/lit8 v4, v4, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    iget-object v1, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Ljava/util/Map;

    .line 95
    .line 96
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, LF0/b;

    .line 101
    .line 102
    if-nez v1, :cond_6

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const/4 v1, 0x0

    .line 113
    const/4 v3, 0x0

    .line 114
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-ge v1, v4, :cond_3

    .line 119
    .line 120
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, LF0/b;

    .line 125
    .line 126
    iget v4, v4, LF0/b;->d:I

    .line 127
    .line 128
    add-int/2addr v3, v4

    .line 129
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_3
    iget-object v1, p0, Lm2/i;->K:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Ljava/util/Random;

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    const/4 v3, 0x0

    .line 141
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-ge v2, v4, :cond_5

    .line 146
    .line 147
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, LF0/b;

    .line 152
    .line 153
    iget v5, v4, LF0/b;->d:I

    .line 154
    .line 155
    add-int/2addr v3, v5

    .line 156
    if-ge v1, v3, :cond_4

    .line 157
    .line 158
    move-object v1, v4

    .line 159
    goto :goto_3

    .line 160
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_5
    invoke-static {p1}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, LF0/b;

    .line 168
    .line 169
    move-object v1, p1

    .line 170
    :goto_3
    iget-object p1, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast p1, Ljava/util/Map;

    .line 173
    .line 174
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    :cond_6
    return-object v1
.end method

.method public final r()Lm2/i;
    .locals 2

    .line 1
    new-instance v0, Lm2/i;

    .line 2
    .line 3
    iget-object v1, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Lm2/i;-><init>(Lm2/i;Lcom/google/android/gms/internal/atv_ads_framework/x0;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final s(Lcom/google/android/gms/internal/pal/j4;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/z4;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/j4;->b:Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/google/android/gms/internal/pal/j4;->a:Lcom/google/android/gms/internal/pal/Q6;

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/pal/z4;-><init>(Lcom/google/android/gms/internal/pal/Q6;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/gms/internal/pal/j4;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 44
    .line 45
    const-string v1, "Attempt to register non-equal parser for already existing object of type: "

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/z4;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    iget-object v1, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public final t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->D(Lm2/i;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final u(Lcom/google/android/gms/internal/pal/l4;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/A4;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/l4;->a:Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/google/android/gms/internal/pal/l4;->b:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/pal/A4;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/gms/internal/pal/l4;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 44
    .line 45
    const-string v1, "Attempt to register non-equal serializer for already existing object of type: "

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/A4;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    iget-object v1, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public final v(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/n;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/r;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/d;->q()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v2, p0, Lm2/i;->I:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/d;->o(I)Lcom/google/android/gms/internal/measurement/n;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v2, p0, v0}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->D(Lm2/i;Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/f;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    :cond_1
    return-object v0
.end method

.method public final w(Lcom/google/android/gms/internal/pal/u4;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/z4;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/u4;->b:Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/google/android/gms/internal/pal/u4;->a:Lcom/google/android/gms/internal/pal/Q6;

    .line 6
    .line 7
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/pal/z4;-><init>(Lcom/google/android/gms/internal/pal/Q6;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lm2/i;->K:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lm2/i;->K:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/gms/internal/pal/u4;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 44
    .line 45
    const-string v1, "Attempt to register non-equal parser for already existing object of type: "

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/z4;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    iget-object v1, p0, Lm2/i;->K:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public final x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/measurement/n;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    iget-object v0, p0, Lm2/i;->H:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lm2/i;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lm2/i;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/n;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string v1, " is not defined"

    .line 32
    .line 33
    invoke-static {p1, v1}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public final y(Lcom/google/android/gms/internal/pal/v4;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/A4;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/pal/v4;->a:Ljava/lang/Class;

    .line 4
    .line 5
    iget-object v2, p1, Lcom/google/android/gms/internal/pal/v4;->b:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/pal/A4;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/google/android/gms/internal/pal/v4;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 44
    .line 45
    const-string v1, "Attempt to register non-equal serializer for already existing object of type: "

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/A4;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    iget-object v1, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v1, Ljava/util/Map;

    .line 62
    .line 63
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method

.method public final z(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm2/i;->K:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p2, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p2, Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lm2/i;->J:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/util/Map;

    .line 25
    .line 26
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method
