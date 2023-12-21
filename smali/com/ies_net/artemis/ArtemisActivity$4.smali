.class Lcom/ies_net/artemis/ArtemisActivity$4;
.super Ljava/lang/Object;
.source "ArtemisActivity.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/ArtemisActivity;->DownloadExpansionFiles(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ies_net/artemis/ArtemisActivity;

.field final synthetic val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisActivity;Lcom/google/android/vending/licensing/APKExpansionPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$aep"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    iput-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    const-string p1, ""

    const/4 v0, 0x0

    move-object v0, p1

    const/4 v1, 0x0

    .line 189
    :goto_0
    iget-object v2, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v2}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURLCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 191
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v2, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionFileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->val$aep:Lcom/google/android/vending/licensing/APKExpansionPolicy;

    invoke-virtual {v2, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->getExpansionURL(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Android/obb/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-virtual {v3}, Lcom/ies_net/artemis/ArtemisActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/ies_net/artemis/ArtemisActivity;->DownloadResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public applicationError(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 230
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v1}, Lcom/ies_net/artemis/ArtemisActivity;->access$300(Lcom/ies_net/artemis/ArtemisActivity;)Lcom/ies_net/artemis/ArtemisActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$402(Lcom/ies_net/artemis/ArtemisActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 232
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$400(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Download failed"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 233
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$400(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "License check - application error"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 235
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$400(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ies_net/artemis/ArtemisActivity$4$4;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisActivity$4$4;-><init>(Lcom/ies_net/artemis/ArtemisActivity$4;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$400(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ies_net/artemis/ArtemisActivity$4$5;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisActivity$4$5;-><init>(Lcom/ies_net/artemis/ArtemisActivity$4;)V

    const-string v1, "OK"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    new-instance v0, Lcom/ies_net/artemis/ArtemisActivity$4$6;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisActivity$4$6;-><init>(Lcom/ies_net/artemis/ArtemisActivity$4;)V

    invoke-virtual {p1, v0}, Lcom/ies_net/artemis/ArtemisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dontAllow(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v2}, Lcom/ies_net/artemis/ArtemisActivity;->access$300(Lcom/ies_net/artemis/ArtemisActivity;)Lcom/ies_net/artemis/ArtemisActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/ies_net/artemis/ArtemisActivity;->access$402(Lcom/ies_net/artemis/ArtemisActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    .line 205
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$400(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Download failed"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x123

    if-eq p1, v0, :cond_1

    const/16 v0, 0x231

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$400(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "License check - Not licensed"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$400(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "License check - Retry"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 218
    :goto_0
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$400(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ies_net/artemis/ArtemisActivity$4$1;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisActivity$4$1;-><init>(Lcom/ies_net/artemis/ArtemisActivity$4;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$400(Lcom/ies_net/artemis/ArtemisActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/ies_net/artemis/ArtemisActivity$4$2;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisActivity$4$2;-><init>(Lcom/ies_net/artemis/ArtemisActivity$4;)V

    const-string v1, "OK"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    iget-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$4;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    new-instance v0, Lcom/ies_net/artemis/ArtemisActivity$4$3;

    invoke-direct {v0, p0}, Lcom/ies_net/artemis/ArtemisActivity$4$3;-><init>(Lcom/ies_net/artemis/ArtemisActivity$4;)V

    invoke-virtual {p1, v0}, Lcom/ies_net/artemis/ArtemisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
