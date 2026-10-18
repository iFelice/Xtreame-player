.class public final LF2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LF2/a;->a:I

    iput-object p2, p0, LF2/a;->b:Ljava/lang/Object;

    iput-object p3, p0, LF2/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lw2/n;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, LF2/a;->a:I

    .line 4
    iput-object p1, p0, LF2/a;->c:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, LF2/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lw2/l;)Z
    .locals 2

    .line 1
    iget v0, p0, LF2/a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LF2/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/io/InputStream;

    .line 9
    .line 10
    check-cast v1, LF2/p;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    .line 18
    .line 19
    const-string p2, "android.resource"

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :pswitch_1
    check-cast v1, Lw2/n;

    .line 31
    .line 32
    invoke-interface {v1, p1, p2}, Lw2/n;->a(Ljava/lang/Object;Lw2/l;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;IILw2/l;)Ly2/D;
    .locals 9

    .line 1
    iget v0, p0, LF2/a;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Ljava/io/InputStream;

    .line 8
    .line 9
    instance-of v0, p1, LF2/w;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, LF2/w;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, LF2/w;

    .line 18
    .line 19
    iget-object v1, p0, LF2/a;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lz2/h;

    .line 22
    .line 23
    invoke-direct {v0, p1, v1}, LF2/w;-><init>(Ljava/io/InputStream;Lz2/h;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    move-object p1, v0

    .line 28
    const/4 v0, 0x1

    .line 29
    :goto_0
    sget-object v2, LP2/f;->I:Ljava/util/ArrayDeque;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, LP2/f;

    .line 37
    .line 38
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    new-instance v1, LP2/f;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/io/InputStream;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_1
    iput-object p1, v1, LP2/f;->G:Ljava/io/InputStream;

    .line 47
    .line 48
    new-instance v2, LP2/l;

    .line 49
    .line 50
    invoke-direct {v2, v1}, LP2/l;-><init>(LP2/f;)V

    .line 51
    .line 52
    .line 53
    new-instance v8, Lm2/c;

    .line 54
    .line 55
    const/16 v3, 0xb

    .line 56
    .line 57
    invoke-direct {v8, v3, p1, v1}, Lm2/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :try_start_1
    iget-object v3, p0, LF2/a;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v3, LF2/p;

    .line 63
    .line 64
    new-instance v4, Lm2/u;

    .line 65
    .line 66
    iget-object v5, v3, LF2/p;->d:Ljava/util/List;

    .line 67
    .line 68
    iget-object v6, v3, LF2/p;->c:Lz2/h;

    .line 69
    .line 70
    invoke-direct {v4, v6, v2, v5}, Lm2/u;-><init>(Lz2/h;LP2/l;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    move v5, p2

    .line 74
    move v6, p3

    .line 75
    move-object v7, p4

    .line 76
    invoke-virtual/range {v3 .. v8}, LF2/p;->a(Lm2/u;IILw2/l;LF2/o;)LF2/d;

    .line 77
    .line 78
    .line 79
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-virtual {v1}, LP2/f;->k()V

    .line 81
    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {p1}, LF2/w;->E()V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-object p2

    .line 89
    :catchall_0
    move-exception p2

    .line 90
    invoke-virtual {v1}, LP2/f;->k()V

    .line 91
    .line 92
    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {p1}, LF2/w;->E()V

    .line 96
    .line 97
    .line 98
    :cond_3
    throw p2

    .line 99
    :catchall_1
    move-exception p1

    .line 100
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    throw p1

    .line 102
    :pswitch_0
    check-cast p1, Landroid/net/Uri;

    .line 103
    .line 104
    iget-object v0, p0, LF2/a;->b:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v0, LG2/e;

    .line 107
    .line 108
    invoke-virtual {v0, p1, p4}, LG2/e;->c(Landroid/net/Uri;Lw2/l;)Ly2/D;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-nez p1, :cond_4

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    check-cast p1, LG2/b;

    .line 116
    .line 117
    invoke-virtual {p1}, LG2/b;->get()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    iget-object p4, p0, LF2/a;->c:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p4, Lz2/d;

    .line 126
    .line 127
    invoke-static {p4, p1, p2, p3}, LF2/r;->a(Lz2/d;Landroid/graphics/drawable/Drawable;II)LF2/d;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    :goto_1
    return-object v1

    .line 132
    :pswitch_1
    iget-object v0, p0, LF2/a;->b:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v0, Lw2/n;

    .line 135
    .line 136
    invoke-interface {v0, p1, p2, p3, p4}, Lw2/n;->b(Ljava/lang/Object;IILw2/l;)Ly2/D;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-object p2, p0, LF2/a;->c:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p2, Landroid/content/res/Resources;

    .line 143
    .line 144
    if-nez p1, :cond_5

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    new-instance v1, LF2/d;

    .line 148
    .line 149
    invoke-direct {v1, p2, p1}, LF2/d;-><init>(Landroid/content/res/Resources;Ly2/D;)V

    .line 150
    .line 151
    .line 152
    :goto_2
    return-object v1

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
