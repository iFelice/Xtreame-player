.class public final LC2/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC2/C;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iput p2, p0, LC2/z;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p2, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p2, v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, LC2/z;->b:Landroid/content/Context;

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, LC2/z;->b:Landroid/content/Context;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, LC2/z;->b:Landroid/content/Context;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, LC2/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, LC2/z;->d(Landroid/net/Uri;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, LC2/z;->d(Landroid/net/Uri;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :pswitch_1
    check-cast p1, Landroid/net/Uri;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, LC2/z;->d(Landroid/net/Uri;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic b(Ljava/lang/Object;IILw2/l;)LC2/B;
    .locals 1

    .line 1
    iget v0, p0, LC2/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Landroid/net/Uri;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, LC2/z;->c(Landroid/net/Uri;IILw2/l;)LC2/B;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, LC2/z;->c(Landroid/net/Uri;IILw2/l;)LC2/B;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :pswitch_1
    check-cast p1, Landroid/net/Uri;

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, p3, p4}, LC2/z;->c(Landroid/net/Uri;IILw2/l;)LC2/B;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Landroid/net/Uri;IILw2/l;)LC2/B;
    .locals 6

    .line 1
    const/16 v0, 0x180

    .line 2
    .line 3
    const/16 v1, 0x200

    .line 4
    .line 5
    const/high16 v2, -0x80000000

    .line 6
    .line 7
    iget v3, p0, LC2/z;->a:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object v5, p0, LC2/z;->b:Landroid/content/Context;

    .line 11
    .line 12
    packed-switch v3, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    if-eq p2, v2, :cond_0

    .line 16
    .line 17
    if-eq p3, v2, :cond_0

    .line 18
    .line 19
    if-gt p2, v1, :cond_0

    .line 20
    .line 21
    if-gt p3, v0, :cond_0

    .line 22
    .line 23
    sget-object p2, LF2/H;->d:Lw2/k;

    .line 24
    .line 25
    invoke-virtual {p4, p2}, Lw2/l;->c(Lw2/k;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Ljava/lang/Long;

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide p2

    .line 37
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    cmp-long p4, p2, v0

    .line 40
    .line 41
    if-nez p4, :cond_0

    .line 42
    .line 43
    new-instance v4, LC2/B;

    .line 44
    .line 45
    new-instance p2, LO2/d;

    .line 46
    .line 47
    invoke-direct {p2, p1}, LO2/d;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p3, Lx2/b;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    invoke-direct {p3, p4}, Lx2/b;-><init>(Landroid/content/ContentResolver;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v5, p1, p3}, Lx2/c;->b(Landroid/content/Context;Landroid/net/Uri;Lx2/d;)Lx2/c;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {v4, p2, p1}, LC2/B;-><init>(Lw2/i;Lcom/bumptech/glide/load/data/e;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-object v4

    .line 67
    :pswitch_0
    if-eq p2, v2, :cond_1

    .line 68
    .line 69
    if-eq p3, v2, :cond_1

    .line 70
    .line 71
    if-gt p2, v1, :cond_1

    .line 72
    .line 73
    if-gt p3, v0, :cond_1

    .line 74
    .line 75
    new-instance v4, LC2/B;

    .line 76
    .line 77
    new-instance p2, LO2/d;

    .line 78
    .line 79
    invoke-direct {p2, p1}, LO2/d;-><init>(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance p3, Lx2/a;

    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    invoke-direct {p3, p4}, Lx2/a;-><init>(Landroid/content/ContentResolver;)V

    .line 89
    .line 90
    .line 91
    invoke-static {v5, p1, p3}, Lx2/c;->b(Landroid/content/Context;Landroid/net/Uri;Lx2/d;)Lx2/c;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {v4, p2, p1}, LC2/B;-><init>(Lw2/i;Lcom/bumptech/glide/load/data/e;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-object v4

    .line 99
    :pswitch_1
    new-instance p2, LC2/B;

    .line 100
    .line 101
    new-instance p3, LO2/d;

    .line 102
    .line 103
    invoke-direct {p3, p1}, LO2/d;-><init>(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    new-instance p4, LC2/y;

    .line 107
    .line 108
    invoke-direct {p4, v5, p1}, LC2/y;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p2, p3, p4}, LC2/B;-><init>(Lw2/i;Lcom/bumptech/glide/load/data/e;)V

    .line 112
    .line 113
    .line 114
    return-object p2

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/net/Uri;)Z
    .locals 4

    .line 1
    const-string v0, "video"

    .line 2
    .line 3
    iget v1, p0, LC2/z;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, LZ3/C;->d(Landroid/net/Uri;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    :cond_0
    return v2

    .line 28
    :pswitch_0
    invoke-static {p1}, LZ3/C;->d(Landroid/net/Uri;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    :cond_1
    return v2

    .line 46
    :pswitch_1
    invoke-static {p1}, LZ3/C;->d(Landroid/net/Uri;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    return p1

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
