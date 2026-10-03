.class public final LU2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW2/b;


# instance fields
.field public final synthetic G:I

.field public final H:Ls6/a;

.field public final I:Ls6/a;

.field public final J:Ls6/a;

.field public final K:Ls6/a;

.field public final L:Ls6/a;


# direct methods
.method public synthetic constructor <init>(Ls6/a;Ls6/a;LW2/b;Ls6/a;Ls6/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p6, p0, LU2/r;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LU2/r;->H:Ls6/a;

    .line 7
    .line 8
    iput-object p2, p0, LU2/r;->I:Ls6/a;

    .line 9
    .line 10
    iput-object p3, p0, LU2/r;->J:Ls6/a;

    .line 11
    .line 12
    iput-object p4, p0, LU2/r;->K:Ls6/a;

    .line 13
    .line 14
    iput-object p5, p0, LU2/r;->L:Ls6/a;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, LU2/r;->G:I

    .line 2
    .line 3
    iget-object v1, p0, LU2/r;->L:Ls6/a;

    .line 4
    .line 5
    iget-object v2, p0, LU2/r;->K:Ls6/a;

    .line 6
    .line 7
    iget-object v3, p0, LU2/r;->J:Ls6/a;

    .line 8
    .line 9
    iget-object v4, p0, LU2/r;->I:Ls6/a;

    .line 10
    .line 11
    iget-object v5, p0, LU2/r;->H:Ls6/a;

    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    invoke-interface {v5}, Ls6/a;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v6, v0

    .line 21
    check-cast v6, Ld3/a;

    .line 22
    .line 23
    invoke-interface {v4}, Ls6/a;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    move-object v7, v0

    .line 28
    check-cast v7, Ld3/a;

    .line 29
    .line 30
    invoke-interface {v3}, Ls6/a;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v2}, Ls6/a;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lb3/j;

    .line 39
    .line 40
    move-object v8, v0

    .line 41
    check-cast v8, Lb3/a;

    .line 42
    .line 43
    move-object v9, v1

    .line 44
    check-cast v9, Lb3/m;

    .line 45
    .line 46
    iget-object v10, p0, LU2/r;->L:Ls6/a;

    .line 47
    .line 48
    move-object v5, v2

    .line 49
    invoke-direct/range {v5 .. v10}, Lb3/j;-><init>(Ld3/a;Ld3/a;Lb3/a;Lb3/m;Ls6/a;)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :pswitch_0
    invoke-interface {v5}, Ls6/a;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    move-object v6, v0

    .line 58
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 59
    .line 60
    invoke-interface {v4}, Ls6/a;->get()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v7, v0

    .line 65
    check-cast v7, LV2/f;

    .line 66
    .line 67
    invoke-interface {v3}, Ls6/a;->get()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object v8, v0

    .line 72
    check-cast v8, La3/m;

    .line 73
    .line 74
    invoke-interface {v2}, Ls6/a;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move-object v9, v0

    .line 79
    check-cast v9, Lb3/d;

    .line 80
    .line 81
    invoke-interface {v1}, Ls6/a;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v10, v0

    .line 86
    check-cast v10, Lc3/c;

    .line 87
    .line 88
    new-instance v0, LZ2/a;

    .line 89
    .line 90
    move-object v5, v0

    .line 91
    invoke-direct/range {v5 .. v10}, LZ2/a;-><init>(Ljava/util/concurrent/Executor;LV2/f;La3/m;Lb3/d;Lc3/c;)V

    .line 92
    .line 93
    .line 94
    return-object v0

    .line 95
    :pswitch_1
    invoke-interface {v5}, Ls6/a;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    move-object v6, v0

    .line 100
    check-cast v6, Ld3/a;

    .line 101
    .line 102
    invoke-interface {v4}, Ls6/a;->get()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    move-object v7, v0

    .line 107
    check-cast v7, Ld3/a;

    .line 108
    .line 109
    invoke-interface {v3}, Ls6/a;->get()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object v8, v0

    .line 114
    check-cast v8, LZ2/b;

    .line 115
    .line 116
    invoke-interface {v2}, Ls6/a;->get()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    move-object v9, v0

    .line 121
    check-cast v9, La3/j;

    .line 122
    .line 123
    invoke-interface {v1}, Ls6/a;->get()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    move-object v10, v0

    .line 128
    check-cast v10, La3/l;

    .line 129
    .line 130
    new-instance v0, LU2/q;

    .line 131
    .line 132
    move-object v5, v0

    .line 133
    invoke-direct/range {v5 .. v10}, LU2/q;-><init>(Ld3/a;Ld3/a;LZ2/b;La3/j;La3/l;)V

    .line 134
    .line 135
    .line 136
    return-object v0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
