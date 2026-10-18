.class public final LY/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/k;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LY/s;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, LY/p;->G:I

    .line 9
    iput-object p1, p0, LY/p;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le0/D;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 5
    iput v0, p0, LY/p;->G:I

    .line 6
    iput-object p1, p0, LY/p;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Le0/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, LY/p;->G:I

    .line 3
    iput-object p1, p0, LY/p;->H:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Le0/m;Le0/i;)V
    .locals 3

    .line 1
    iget v0, p0, LY/p;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, LY/p;->H:Ljava/lang/Object;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, LA0/O;->I(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    throw v1

    .line 13
    :pswitch_0
    sget-object v0, Le0/i;->ON_CREATE:Le0/i;

    .line 14
    .line 15
    if-ne p2, v0, :cond_3

    .line 16
    .line 17
    invoke-interface {p1}, Le0/m;->h()Le0/o;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Le0/o;->c(Le0/l;)V

    .line 22
    .line 23
    .line 24
    check-cast v2, Le0/D;

    .line 25
    .line 26
    iget-boolean p1, v2, Le0/D;->b:Z

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    iget-object p1, v2, Le0/D;->a:LS1/e;

    .line 31
    .line 32
    const-string p2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, LS1/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance p2, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v0, v2, Le0/D;->c:Landroid/os/Bundle;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iput-object p2, v2, Le0/D;->c:Landroid/os/Bundle;

    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, v2, Le0/D;->b:Z

    .line 59
    .line 60
    invoke-virtual {v2}, Le0/D;->b()Le0/E;

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void

    .line 64
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v0, "Next event must be ON_CREATE, it was "

    .line 67
    .line 68
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p2

    .line 88
    :pswitch_1
    new-instance p1, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 91
    .line 92
    .line 93
    check-cast v2, [Le0/e;

    .line 94
    .line 95
    array-length p1, v2

    .line 96
    const/4 p2, 0x0

    .line 97
    if-gtz p1, :cond_5

    .line 98
    .line 99
    array-length p1, v2

    .line 100
    if-gtz p1, :cond_4

    .line 101
    .line 102
    return-void

    .line 103
    :cond_4
    aget-object p1, v2, p2

    .line 104
    .line 105
    throw v1

    .line 106
    :cond_5
    aget-object p1, v2, p2

    .line 107
    .line 108
    throw v1

    .line 109
    :pswitch_2
    sget-object p1, Le0/i;->ON_STOP:Le0/i;

    .line 110
    .line 111
    if-ne p2, p1, :cond_6

    .line 112
    .line 113
    check-cast v2, LY/s;

    .line 114
    .line 115
    iget-object p1, v2, LY/s;->m0:Landroid/view/View;

    .line 116
    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 120
    .line 121
    .line 122
    :cond_6
    return-void

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
