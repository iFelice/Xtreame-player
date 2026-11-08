.class public final Lcom/google/android/gms/internal/measurement/a1;
.super Lcom/google/android/gms/internal/measurement/r2;
.source "SourceFile"


# virtual methods
.method public final h()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b1;->s()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final i()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b1;->t()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final j(Lcom/google/android/gms/internal/measurement/e1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/r2;->e()Lcom/google/android/gms/internal/measurement/s2;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/measurement/f1;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b1;->z(Lcom/google/android/gms/internal/measurement/b1;Lcom/google/android/gms/internal/measurement/f1;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final l(Lcom/google/android/gms/internal/measurement/f1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/b1;->z(Lcom/google/android/gms/internal/measurement/b1;Lcom/google/android/gms/internal/measurement/f1;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final m(I)Lcom/google/android/gms/internal/measurement/f1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/b1;->v(I)Lcom/google/android/gms/internal/measurement/f1;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b1;->w()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final o()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/b1;->x()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
