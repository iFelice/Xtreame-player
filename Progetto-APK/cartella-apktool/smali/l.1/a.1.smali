.class public final Ll/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN/V;
.implements LP0/g;


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LF2/G;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    invoke-direct {v0, v1}, LF2/G;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ll/a;->c:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ll/a;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/widget/ActionBarContextView;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Ll/a;->a:Z

    .line 10
    .line 11
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ll/a;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Ll/a;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Landroidx/appcompat/widget/ActionBarContextView;->L:LN/U;

    .line 12
    .line 13
    iget v1, p0, Ll/a;->b:I

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->b(Landroidx/appcompat/widget/ActionBarContextView;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d(ILm0/t;ZLjava/util/ArrayList;LW0/L;)LP0/e;
    .locals 10

    .line 1
    iget-object v0, p2, Lm0/t;->n:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lm0/O;->n(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Ll/a;->c:Ljava/lang/Object;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-boolean p3, p0, Ll/a;->a:Z

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    new-instance p3, Lq1/h;

    .line 18
    .line 19
    check-cast v2, Lq1/k;

    .line 20
    .line 21
    check-cast v2, LF2/G;

    .line 22
    .line 23
    invoke-virtual {v2, p2}, LF2/G;->x(Lm0/t;)Lq1/m;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-direct {p3, p4, p2}, Lq1/h;-><init>(Lq1/m;Lm0/t;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_1
    const/4 v1, 0x1

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string v3, "video/webm"

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_8

    .line 43
    .line 44
    const-string v3, "audio/webm"

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_8

    .line 51
    .line 52
    const-string v3, "application/webm"

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_8

    .line 59
    .line 60
    const-string v3, "video/x-matroska"

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_8

    .line 67
    .line 68
    const-string v3, "audio/x-matroska"

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_8

    .line 75
    .line 76
    const-string v3, "application/x-matroska"

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    :goto_0
    const-string v3, "image/jpeg"

    .line 86
    .line 87
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_4

    .line 92
    .line 93
    new-instance p3, La1/a;

    .line 94
    .line 95
    invoke-direct {p3, v1}, La1/a;-><init>(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    const-string v3, "image/png"

    .line 100
    .line 101
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    const/4 v3, 0x0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    new-instance p3, La1/a;

    .line 109
    .line 110
    invoke-direct {p3, v1, v3}, La1/a;-><init>(II)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    if-eqz p3, :cond_6

    .line 115
    .line 116
    const/4 v3, 0x4

    .line 117
    :cond_6
    iget-boolean p3, p0, Ll/a;->a:Z

    .line 118
    .line 119
    if-nez p3, :cond_7

    .line 120
    .line 121
    or-int/lit8 v3, v3, 0x20

    .line 122
    .line 123
    :cond_7
    iget p3, p0, Ll/a;->b:I

    .line 124
    .line 125
    invoke-static {p3}, Lo1/i;->a(I)I

    .line 126
    .line 127
    .line 128
    move-result p3

    .line 129
    or-int v6, v3, p3

    .line 130
    .line 131
    new-instance p3, Lo1/i;

    .line 132
    .line 133
    move-object v5, v2

    .line 134
    check-cast v5, Lq1/k;

    .line 135
    .line 136
    const/4 v7, 0x0

    .line 137
    move-object v4, p3

    .line 138
    move-object v8, p4

    .line 139
    move-object v9, p5

    .line 140
    invoke-direct/range {v4 .. v9}, Lo1/i;-><init>(Lq1/k;ILp0/J;Ljava/util/List;LW0/L;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_8
    :goto_1
    iget-boolean p3, p0, Ll/a;->a:Z

    .line 145
    .line 146
    if-nez p3, :cond_9

    .line 147
    .line 148
    const/4 v1, 0x3

    .line 149
    :cond_9
    new-instance p3, Lm1/d;

    .line 150
    .line 151
    check-cast v2, Lq1/k;

    .line 152
    .line 153
    invoke-direct {p3, v1, v2}, Lm1/d;-><init>(ILq1/k;)V

    .line 154
    .line 155
    .line 156
    :goto_2
    new-instance p4, LP0/e;

    .line 157
    .line 158
    invoke-direct {p4, p3, p1, p2}, LP0/e;-><init>(LW0/s;ILm0/t;)V

    .line 159
    .line 160
    .line 161
    return-object p4
.end method
