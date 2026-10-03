.class public final La/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/k;


# static fields
.field public static H:I

.field public static I:Ljava/lang/reflect/Field;

.field public static J:Ljava/lang/reflect/Field;

.field public static K:Ljava/lang/reflect/Field;


# instance fields
.field public G:Landroid/app/Activity;


# virtual methods
.method public final b(Le0/m;Le0/i;)V
    .locals 2

    .line 1
    sget-object p1, Le0/i;->ON_DESTROY:Le0/i;

    .line 2
    .line 3
    if-eq p2, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget p1, La/p;->H:I

    .line 7
    .line 8
    const/4 p2, 0x1

    .line 9
    if-nez p1, :cond_1

    .line 10
    .line 11
    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    :try_start_0
    sput v0, La/p;->H:I

    .line 15
    .line 16
    const-string v0, "mServedView"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, La/p;->J:Ljava/lang/reflect/Field;

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    .line 26
    .line 27
    const-string v0, "mNextServedView"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, La/p;->K:Ljava/lang/reflect/Field;

    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 36
    .line 37
    .line 38
    const-string v0, "mH"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sput-object p1, La/p;->I:Ljava/lang/reflect/Field;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 47
    .line 48
    .line 49
    sput p2, La/p;->H:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    nop

    .line 53
    :cond_1
    :goto_0
    sget p1, La/p;->H:I

    .line 54
    .line 55
    if-ne p1, p2, :cond_5

    .line 56
    .line 57
    iget-object p1, p0, La/p;->G:Landroid/app/Activity;

    .line 58
    .line 59
    const-string p2, "input_method"

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 66
    .line 67
    :try_start_1
    sget-object p2, La/p;->I:Ljava/lang/reflect/Field;

    .line 68
    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    .line 73
    if-nez p2, :cond_2

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    monitor-enter p2

    .line 77
    :try_start_2
    sget-object v0, La/p;->J:Ljava/lang/reflect/Field;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/view/View;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    .line 85
    if-nez v0, :cond_3

    .line 86
    .line 87
    :try_start_3
    monitor-exit p2

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    return-void

    .line 99
    :cond_4
    :try_start_4
    sget-object v0, La/p;->K:Ljava/lang/reflect/Field;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    .line 104
    .line 105
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 106
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catch_1
    :try_start_6
    monitor-exit p2

    .line 111
    return-void

    .line 112
    :catch_2
    monitor-exit p2

    .line 113
    return-void

    .line 114
    :catch_3
    monitor-exit p2

    .line 115
    return-void

    .line 116
    :goto_1
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 117
    throw p1

    .line 118
    :catch_4
    :cond_5
    :goto_2
    return-void
.end method
