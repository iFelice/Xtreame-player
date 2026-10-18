.class public final La/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/k;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:La/m;


# direct methods
.method public synthetic constructor <init>(LY/v;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, La/i;->G:I

    .line 5
    .line 6
    iput-object p1, p0, La/i;->H:La/m;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Le0/m;Le0/i;)V
    .locals 1

    .line 1
    iget p1, p0, La/i;->G:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, La/i;->H:La/m;

    .line 8
    .line 9
    iget-object p2, p1, La/m;->L:Le0/K;

    .line 10
    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, La/k;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p2, La/k;->a:Le0/K;

    .line 22
    .line 23
    iput-object p2, p1, La/m;->L:Le0/K;

    .line 24
    .line 25
    :cond_0
    iget-object p2, p1, La/m;->L:Le0/K;

    .line 26
    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    new-instance p2, Le0/K;

    .line 30
    .line 31
    invoke-direct {p2}, Le0/K;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p2, p1, La/m;->L:Le0/K;

    .line 35
    .line 36
    :cond_1
    iget-object p1, p1, La/m;->J:Le0/o;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Le0/o;->c(Le0/l;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    sget-object p1, Le0/i;->ON_DESTROY:Le0/i;

    .line 43
    .line 44
    if-ne p2, p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, La/i;->H:La/m;

    .line 47
    .line 48
    iget-object p1, p1, La/m;->H:LJ3/k;

    .line 49
    .line 50
    iput-object v0, p1, LJ3/k;->H:Ljava/lang/Object;

    .line 51
    .line 52
    iget-object p1, p0, La/i;->H:La/m;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, La/i;->H:La/m;

    .line 61
    .line 62
    invoke-virtual {p1}, La/m;->c()Le0/K;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Le0/K;->a()V

    .line 67
    .line 68
    .line 69
    :cond_2
    return-void

    .line 70
    :pswitch_1
    sget-object p1, Le0/i;->ON_STOP:Le0/i;

    .line 71
    .line 72
    if-ne p2, p1, :cond_4

    .line 73
    .line 74
    iget-object p1, p0, La/i;->H:La/m;

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_3
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/view/View;->cancelPendingInputEvents()V

    .line 89
    .line 90
    .line 91
    :cond_4
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
