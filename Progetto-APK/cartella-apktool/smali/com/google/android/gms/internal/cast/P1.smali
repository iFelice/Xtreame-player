.class public final Lcom/google/android/gms/internal/cast/P1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD3/h;


# instance fields
.field public final synthetic G:Lo/j;


# direct methods
.method public constructor <init>(Lo/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/P1;->G:Lo/j;

    return-void
.end method

.method public synthetic constructor <init>(Lo/j;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/P1;->G:Lo/j;

    return-void
.end method


# virtual methods
.method public final b(LD3/f;)V
    .locals 5

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    new-instance v0, LF/d;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2}, LF/d;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/P1;->G:Lo/j;

    .line 11
    .line 12
    iget-object v4, v3, Lo/j;->H:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v4, Lcom/google/android/gms/internal/cast/c;

    .line 15
    .line 16
    iget v4, v4, Lcom/google/android/gms/internal/cast/c;->I:I

    .line 17
    .line 18
    if-ne v4, v1, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, v0, LF/d;->J:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v1, Lcom/google/android/gms/internal/cast/a3;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/a3;-><init>(LF/d;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v3, v1}, Lo/j;->c(Lo/j;Lcom/google/android/gms/internal/cast/a3;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v3, Lo/j;->J:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lcom/google/android/gms/internal/cast/Z2;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/Z2;->a(LD3/c;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, v3, Lo/j;->K:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lcom/google/android/gms/internal/cast/P1;

    .line 48
    .line 49
    iput-object v0, p1, LD3/c;->l:Lcom/google/android/gms/internal/cast/P1;

    .line 50
    .line 51
    return-void
.end method

.method public final bridge synthetic e(LD3/f;Z)V
    .locals 2

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    new-instance p2, LF/d;

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p2, v0, v1}, LF/d;-><init>(II)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/cast/a3;

    .line 11
    .line 12
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/cast/a3;-><init>(LF/d;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/P1;->G:Lo/j;

    .line 16
    .line 17
    invoke-static {p2, v0}, Lo/j;->c(Lo/j;Lcom/google/android/gms/internal/cast/a3;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p2, Lo/j;->J:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p2, Lcom/google/android/gms/internal/cast/Z2;

    .line 23
    .line 24
    invoke-static {p2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/Z2;->a(LD3/c;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final f(LD3/f;I)V
    .locals 3

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    new-instance v0, LF/d;

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2}, LF/d;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, v0, LF/d;->I:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance p2, Lcom/google/android/gms/internal/cast/a3;

    .line 17
    .line 18
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/cast/a3;-><init>(LF/d;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/P1;->G:Lo/j;

    .line 22
    .line 23
    invoke-static {v0, p2}, Lo/j;->c(Lo/j;Lcom/google/android/gms/internal/cast/a3;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, v0, Lo/j;->J:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p2, Lcom/google/android/gms/internal/cast/Z2;

    .line 29
    .line 30
    invoke-static {p2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/Z2;->a(LD3/c;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final g(LD3/f;I)V
    .locals 2

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    new-instance p1, LF/d;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p1, v0, v1}, LF/d;-><init>(II)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p1, LF/d;->I:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance p2, Lcom/google/android/gms/internal/cast/a3;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/cast/a3;-><init>(LF/d;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/P1;->G:Lo/j;

    .line 23
    .line 24
    invoke-static {p1, p2}, Lo/j;->c(Lo/j;Lcom/google/android/gms/internal/cast/a3;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lo/j;->f()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final h(LD3/f;Ljava/lang/String;)V
    .locals 3

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    new-instance v0, LF/d;

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2}, LF/d;-><init>(II)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/cast/a3;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/a3;-><init>(LF/d;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/P1;->G:Lo/j;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lo/j;->c(Lo/j;Lcom/google/android/gms/internal/cast/a3;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lo/j;->J:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/gms/internal/cast/Z2;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cast/Z2;->a(LD3/c;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Lo/j;->J:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lcom/google/android/gms/internal/cast/Z2;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/Z2;->k:Ljava/lang/String;

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/Z2;->k:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_1

    .line 49
    .line 50
    const/4 p2, 0x4

    .line 51
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/Z2;->b(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public final j(LD3/f;I)V
    .locals 2

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    new-instance p1, LF/d;

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {p1, v0, v1}, LF/d;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p1, LF/d;->I:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance p2, Lcom/google/android/gms/internal/cast/a3;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/cast/a3;-><init>(LF/d;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/P1;->G:Lo/j;

    .line 22
    .line 23
    invoke-static {p1, p2}, Lo/j;->c(Lo/j;Lcom/google/android/gms/internal/cast/a3;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lo/j;->f()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final l(LD3/f;Ljava/lang/String;)V
    .locals 3

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    new-instance v0, LF/d;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x4

    .line 7
    invoke-direct {v0, v2, v1}, LF/d;-><init>(II)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/cast/a3;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/a3;-><init>(LF/d;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/P1;->G:Lo/j;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lo/j;->c(Lo/j;Lcom/google/android/gms/internal/cast/a3;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lo/j;->J:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/gms/internal/cast/Z2;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cast/Z2;->a(LD3/c;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Lo/j;->J:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Lcom/google/android/gms/internal/cast/Z2;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/Z2;->k:Ljava/lang/String;

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/Z2;->k:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-nez p2, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/cast/Z2;->b(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public final bridge synthetic o(LD3/f;)V
    .locals 0

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    return-void
.end method

.method public final q(LD3/f;I)V
    .locals 3

    .line 1
    check-cast p1, LD3/c;

    .line 2
    .line 3
    new-instance p1, LF/d;

    .line 4
    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p1, v0, v1}, LF/d;-><init>(II)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p1, LF/d;->I:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/P1;->G:Lo/j;

    .line 18
    .line 19
    iget-object v0, p2, Lo/j;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/gms/internal/cast/c;

    .line 22
    .line 23
    iget v0, v0, Lcom/google/android/gms/internal/cast/c;->I:I

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-ne v0, v2, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p1, LF/d;->J:Ljava/lang/Object;

    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/cast/a3;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/a3;-><init>(LF/d;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2, v0}, Lo/j;->c(Lo/j;Lcom/google/android/gms/internal/cast/a3;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lo/j;->f()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
