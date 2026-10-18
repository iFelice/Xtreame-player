.class public final Ly2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/h;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field public final G:Ljava/util/List;

.field public final H:Ly2/i;

.field public final I:Ly2/g;

.field public J:I

.field public K:Lw2/i;

.field public L:Ljava/util/List;

.field public M:I

.field public volatile N:LC2/B;

.field public O:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/util/List;Ly2/i;Ly2/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ly2/e;->J:I

    .line 6
    .line 7
    iput-object p1, p0, Ly2/e;->G:Ljava/util/List;

    .line 8
    .line 9
    iput-object p2, p0, Ly2/e;->H:Ly2/i;

    .line 10
    .line 11
    iput-object p3, p0, Ly2/e;->I:Ly2/g;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly2/e;->I:Ly2/g;

    .line 2
    .line 3
    iget-object v1, p0, Ly2/e;->K:Lw2/i;

    .line 4
    .line 5
    iget-object v2, p0, Ly2/e;->N:LC2/B;

    .line 6
    .line 7
    iget-object v2, v2, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    sget-object v3, Lw2/a;->I:Lw2/a;

    .line 10
    .line 11
    invoke-interface {v0, v1, p1, v2, v3}, Ly2/g;->a(Lw2/i;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;Lw2/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c()Z
    .locals 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Ly2/e;->L:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget v3, p0, Ly2/e;->M:I

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v3, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Ly2/e;->N:LC2/B;

    .line 17
    .line 18
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 19
    .line 20
    iget v0, p0, Ly2/e;->M:I

    .line 21
    .line 22
    iget-object v3, p0, Ly2/e;->L:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-ge v0, v3, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Ly2/e;->L:Ljava/util/List;

    .line 31
    .line 32
    iget v3, p0, Ly2/e;->M:I

    .line 33
    .line 34
    add-int/lit8 v4, v3, 0x1

    .line 35
    .line 36
    iput v4, p0, Ly2/e;->M:I

    .line 37
    .line 38
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, LC2/C;

    .line 43
    .line 44
    iget-object v3, p0, Ly2/e;->O:Ljava/io/File;

    .line 45
    .line 46
    iget-object v4, p0, Ly2/e;->H:Ly2/i;

    .line 47
    .line 48
    iget v5, v4, Ly2/i;->e:I

    .line 49
    .line 50
    iget v6, v4, Ly2/i;->f:I

    .line 51
    .line 52
    iget-object v4, v4, Ly2/i;->i:Lw2/l;

    .line 53
    .line 54
    invoke-interface {v0, v3, v5, v6, v4}, LC2/C;->b(Ljava/lang/Object;IILw2/l;)LC2/B;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Ly2/e;->N:LC2/B;

    .line 59
    .line 60
    iget-object v0, p0, Ly2/e;->N:LC2/B;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Ly2/e;->H:Ly2/i;

    .line 65
    .line 66
    iget-object v3, p0, Ly2/e;->N:LC2/B;

    .line 67
    .line 68
    iget-object v3, v3, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 69
    .line 70
    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v0, v3}, Ly2/i;->c(Ljava/lang/Class;)Ly2/B;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    iget-object v0, p0, Ly2/e;->N:LC2/B;

    .line 81
    .line 82
    iget-object v0, v0, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 83
    .line 84
    iget-object v2, p0, Ly2/e;->H:Ly2/i;

    .line 85
    .line 86
    iget-object v2, v2, Ly2/i;->o:Lcom/bumptech/glide/g;

    .line 87
    .line 88
    invoke-interface {v0, v2, p0}, Lcom/bumptech/glide/load/data/e;->e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V

    .line 89
    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    goto :goto_1

    .line 93
    :cond_2
    return v2

    .line 94
    :cond_3
    iget v0, p0, Ly2/e;->J:I

    .line 95
    .line 96
    add-int/2addr v0, v1

    .line 97
    iput v0, p0, Ly2/e;->J:I

    .line 98
    .line 99
    iget-object v1, p0, Ly2/e;->G:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-lt v0, v1, :cond_4

    .line 106
    .line 107
    return v2

    .line 108
    :cond_4
    iget-object v0, p0, Ly2/e;->G:Ljava/util/List;

    .line 109
    .line 110
    iget v1, p0, Ly2/e;->J:I

    .line 111
    .line 112
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Lw2/i;

    .line 117
    .line 118
    new-instance v1, Ly2/f;

    .line 119
    .line 120
    iget-object v3, p0, Ly2/e;->H:Ly2/i;

    .line 121
    .line 122
    iget-object v4, v3, Ly2/i;->n:Lw2/i;

    .line 123
    .line 124
    invoke-direct {v1, v0, v4}, Ly2/f;-><init>(Lw2/i;Lw2/i;)V

    .line 125
    .line 126
    .line 127
    iget-object v3, v3, Ly2/i;->h:LJ3/k;

    .line 128
    .line 129
    invoke-virtual {v3}, LJ3/k;->a()LA2/a;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-interface {v3, v1}, LA2/a;->a(Lw2/i;)Ljava/io/File;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iput-object v1, p0, Ly2/e;->O:Ljava/io/File;

    .line 138
    .line 139
    if-eqz v1, :cond_0

    .line 140
    .line 141
    iput-object v0, p0, Ly2/e;->K:Lw2/i;

    .line 142
    .line 143
    iget-object v0, p0, Ly2/e;->H:Ly2/i;

    .line 144
    .line 145
    iget-object v0, v0, Ly2/i;->c:Lcom/bumptech/glide/f;

    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/bumptech/glide/f;->b()Lcom/bumptech/glide/j;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->g(Ljava/lang/Object;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Ly2/e;->L:Ljava/util/List;

    .line 156
    .line 157
    iput v2, p0, Ly2/e;->M:I

    .line 158
    .line 159
    goto/16 :goto_0
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly2/e;->N:LC2/B;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly2/e;->I:Ly2/g;

    .line 2
    .line 3
    iget-object v1, p0, Ly2/e;->K:Lw2/i;

    .line 4
    .line 5
    iget-object v2, p0, Ly2/e;->N:LC2/B;

    .line 6
    .line 7
    iget-object v3, v2, LC2/B;->c:Lcom/bumptech/glide/load/data/e;

    .line 8
    .line 9
    sget-object v4, Lw2/a;->I:Lw2/a;

    .line 10
    .line 11
    iget-object v5, p0, Ly2/e;->K:Lw2/i;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    invoke-interface/range {v0 .. v5}, Ly2/g;->d(Lw2/i;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;Lw2/a;Lw2/i;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
