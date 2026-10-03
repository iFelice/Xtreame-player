.class public final synthetic LE3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/p;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LE3/d;


# direct methods
.method public synthetic constructor <init>(LE3/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LE3/u;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LE3/u;->b:LE3/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/o;)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x1f4

    .line 2
    .line 3
    iget v2, p0, LE3/u;->a:I

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const-string v5, ", statusMessage="

    .line 8
    .line 9
    iget-object v6, p0, LE3/u;->b:LE3/d;

    .line 10
    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p1, LE3/i;

    .line 15
    .line 16
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/common/api/o;->c()Lcom/google/android/gms/common/api/Status;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget v2, p1, Lcom/google/android/gms/common/api/Status;->G:I

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    const-string v7, "Error fetching queue items, statusCode="

    .line 28
    .line 29
    invoke-static {v7, v2, v5}, La/r;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->H:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-array v2, v4, [Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v4, v6, LE3/d;->a:LH3/b;

    .line 45
    .line 46
    iget-object v5, v4, LH3/b;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v4, p1, v2}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_0
    iput-object v3, v6, LE3/d;->k:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 56
    .line 57
    iget-object p1, v6, LE3/d;->h:Ljava/util/ArrayDeque;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    iget-object p1, v6, LE3/d;->i:LX3/d;

    .line 66
    .line 67
    iget-object v2, v6, LE3/d;->j:LE3/v;

    .line 68
    .line 69
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void

    .line 76
    :pswitch_0
    check-cast p1, LE3/i;

    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Lcom/google/android/gms/common/api/o;->c()Lcom/google/android/gms/common/api/Status;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget v2, p1, Lcom/google/android/gms/common/api/Status;->G:I

    .line 86
    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    const-string v7, "Error fetching queue item ids, statusCode="

    .line 90
    .line 91
    invoke-static {v7, v2, v5}, La/r;->k(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object p1, p1, Lcom/google/android/gms/common/api/Status;->H:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-array v2, v4, [Ljava/lang/Object;

    .line 105
    .line 106
    iget-object v4, v6, LE3/d;->a:LH3/b;

    .line 107
    .line 108
    iget-object v5, v4, LH3/b;->a:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v4, p1, v2}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    :cond_2
    iput-object v3, v6, LE3/d;->l:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 118
    .line 119
    iget-object p1, v6, LE3/d;->h:Ljava/util/ArrayDeque;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_3

    .line 126
    .line 127
    iget-object p1, v6, LE3/d;->i:LX3/d;

    .line 128
    .line 129
    iget-object v2, v6, LE3/d;->j:LE3/v;

    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    .line 136
    .line 137
    :cond_3
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
