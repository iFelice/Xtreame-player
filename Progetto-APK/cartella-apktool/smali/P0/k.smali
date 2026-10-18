.class public final LP0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/U;


# instance fields
.field public final G:LP0/m;

.field public final H:LO0/T;

.field public final I:I

.field public J:Z

.field public final synthetic K:LP0/m;


# direct methods
.method public constructor <init>(LP0/m;LP0/m;LO0/T;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP0/k;->K:LP0/m;

    .line 5
    .line 6
    iput-object p2, p0, LP0/k;->G:LP0/m;

    .line 7
    .line 8
    iput-object p3, p0, LP0/k;->H:LO0/T;

    .line 9
    .line 10
    iput p4, p0, LP0/k;->I:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-boolean v0, p0, LP0/k;->J:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, LP0/k;->K:LP0/m;

    .line 6
    .line 7
    iget-object v1, v0, LP0/m;->M:LO0/D;

    .line 8
    .line 9
    iget-object v2, v0, LP0/m;->H:[I

    .line 10
    .line 11
    iget v3, p0, LP0/k;->I:I

    .line 12
    .line 13
    aget v2, v2, v3

    .line 14
    .line 15
    iget-object v4, v0, LP0/m;->I:[Lm0/t;

    .line 16
    .line 17
    aget-object v3, v4, v3

    .line 18
    .line 19
    iget-wide v6, v0, LP0/m;->Z:J

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual/range {v1 .. v7}, LO0/D;->b(ILm0/t;ILjava/lang/Object;J)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, LP0/k;->J:Z

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, LP0/k;->K:LP0/m;

    .line 2
    .line 3
    iget-object v1, v0, LP0/m;->J:[Z

    .line 4
    .line 5
    iget v2, p0, LP0/k;->I:I

    .line 6
    .line 7
    aget-boolean v1, v1, v2

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, LP0/m;->J:[Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aput-boolean v1, v0, v2

    .line 16
    .line 17
    return-void
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, LP0/k;->K:LP0/m;

    .line 2
    .line 3
    invoke-virtual {v0}, LP0/m;->A()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, LP0/k;->H:LO0/T;

    .line 10
    .line 11
    iget-boolean v0, v0, LP0/m;->d0:Z

    .line 12
    .line 13
    invoke-virtual {v1, v0}, LO0/T;->y(Z)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public final j(J)I
    .locals 2

    .line 1
    iget-object v0, p0, LP0/k;->K:LP0/m;

    .line 2
    .line 3
    invoke-virtual {v0}, LP0/m;->A()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    iget-boolean v0, v0, LP0/m;->d0:Z

    .line 12
    .line 13
    iget-object v1, p0, LP0/k;->H:LO0/T;

    .line 14
    .line 15
    invoke-virtual {v1, p1, p2, v0}, LO0/T;->v(JZ)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v1, p1}, LO0/T;->I(I)V

    .line 20
    .line 21
    .line 22
    if-lez p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, LP0/k;->a()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return p1
.end method

.method public final r(LB0/Z;Lw0/g;I)I
    .locals 2

    .line 1
    iget-object v0, p0, LP0/k;->K:LP0/m;

    .line 2
    .line 3
    invoke-virtual {v0}, LP0/m;->A()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 p1, -0x3

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {p0}, LP0/k;->a()V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, v0, LP0/m;->d0:Z

    .line 15
    .line 16
    iget-object v1, p0, LP0/k;->H:LO0/T;

    .line 17
    .line 18
    invoke-virtual {v1, p1, p2, p3, v0}, LO0/T;->D(LB0/Z;Lw0/g;IZ)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method
