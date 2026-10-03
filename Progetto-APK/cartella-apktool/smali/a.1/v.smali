.class public final La/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/k;
.implements La/a;


# instance fields
.field public final G:Le0/B;

.field public final H:La/q;

.field public I:La/w;

.field public final synthetic J:La/x;


# direct methods
.method public constructor <init>(La/x;Le0/B;LY/D;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "onBackPressedCallback"

    .line 5
    .line 6
    invoke-static {p3, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, La/v;->J:La/x;

    .line 10
    .line 11
    iput-object p2, p0, La/v;->G:Le0/B;

    .line 12
    .line 13
    iput-object p3, p0, La/v;->H:La/q;

    .line 14
    .line 15
    invoke-virtual {p2, p0}, Le0/B;->a(Le0/l;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b(Le0/m;Le0/i;)V
    .locals 3

    .line 1
    sget-object p1, Le0/i;->ON_START:Le0/i;

    .line 2
    .line 3
    if-ne p2, p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, La/v;->J:La/x;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, La/v;->H:La/q;

    .line 11
    .line 12
    const-string v0, "onBackPressedCallback"

    .line 13
    .line 14
    invoke-static {p2, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, La/x;->c:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lu6/i;

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lu6/i;->addLast(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, La/w;

    .line 25
    .line 26
    invoke-direct {v0, p1, p2}, La/w;-><init>(La/x;La/q;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p2, La/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 35
    .line 36
    const/16 v2, 0x21

    .line 37
    .line 38
    if-lt v1, v2, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, La/x;->c()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, La/x;->d:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, LC6/a;

    .line 46
    .line 47
    iput-object p1, p2, La/q;->c:LC6/a;

    .line 48
    .line 49
    :cond_0
    iput-object v0, p0, La/v;->I:La/w;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object p1, Le0/i;->ON_STOP:Le0/i;

    .line 53
    .line 54
    if-ne p2, p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, La/v;->I:La/w;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1}, La/w;->cancel()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    sget-object p1, Le0/i;->ON_DESTROY:Le0/i;

    .line 65
    .line 66
    if-ne p2, p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, La/v;->cancel()V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, La/v;->G:Le0/B;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Le0/B;->c(Le0/l;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La/v;->H:La/q;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, v0, La/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, La/v;->I:La/w;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, La/w;->cancel()V

    .line 21
    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, La/v;->I:La/w;

    .line 25
    .line 26
    return-void
.end method
